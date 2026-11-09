import 'dart:async';

import 'package:dio/dio.dart';
import 'package:medusa_mobile/api/medusa_exception.dart';
import 'package:medusa_mobile/api/store/auth_api.dart';
import 'package:medusa_mobile/api/store/cart_api.dart';
import 'package:medusa_mobile/api/store/category_api.dart';
import 'package:medusa_mobile/api/store/collection_api.dart';
import 'package:medusa_mobile/api/store/customer_api.dart';
import 'package:medusa_mobile/api/store/fulfillment_api.dart';
import 'package:medusa_mobile/api/store/order_api.dart';
import 'package:medusa_mobile/api/store/payment_api.dart';
import 'package:medusa_mobile/api/store/product_api.dart';
import 'package:medusa_mobile/api/store/region_api.dart';
import 'package:medusa_mobile/api/token_storage.dart';
import 'package:medusa_mobile/config/env.dart';

/// The configured Medusa Store API client.
///
/// Mirrors the official JS SDK's shape (`client.store.cart`, `client.auth`):
/// one Dio instance sends the publishable key with every request and the
/// customer's JWT once they sign in. Create it once in `bootstrap` and share it
/// through the repositories.
class MedusaClient {
  MedusaClient({
    required this._tokenStorage,
    String? baseUrl,
    String? publishableKey,
    Dio? dio,
  }) : baseUrl = baseUrl ?? Env.medusaBackendUrl,
       dio =
           dio ??
           Dio(
             BaseOptions(
               baseUrl: baseUrl ?? Env.medusaBackendUrl,
               connectTimeout: const Duration(seconds: 15),
               receiveTimeout: const Duration(seconds: 30),
               headers: {
                 'Content-Type': 'application/json',
                 'Accept': 'application/json',
               },
             ),
           ) {
    final key = publishableKey ?? Env.publishableApiKey;
    if (key.isNotEmpty) {
      this.dio.options.headers['x-publishable-api-key'] = key;
    }
    this.dio.interceptors.add(_AuthInterceptor(this));

    product = ProductApi(this);
    category = CategoryApi(this);
    collection = CollectionApi(this);
    region = RegionApi(this);
    cart = CartApi(this);
    customer = CustomerApi(this);
    order = OrderApi(this);
    fulfillment = FulfillmentApi(this);
    payment = PaymentApi(this);
    auth = AuthApi(this);
  }

  final Dio dio;
  final String baseUrl;
  final TokenStorage _tokenStorage;

  late final ProductApi product;
  late final CategoryApi category;
  late final CollectionApi collection;
  late final RegionApi region;
  late final CartApi cart;
  late final CustomerApi customer;
  late final OrderApi order;
  late final FulfillmentApi fulfillment;
  late final PaymentApi payment;
  late final AuthApi auth;

  String? _token;
  bool _tokenLoaded = false;

  /// The customer's JWT, read from storage on first use.
  Future<String?> getToken() async {
    if (!_tokenLoaded) {
      _token = await _tokenStorage.read();
      _tokenLoaded = true;
    }
    return _token;
  }

  Future<void> setToken(String? token) async {
    _token = token;
    _tokenLoaded = true;
    if (token == null) {
      await _tokenStorage.delete();
    } else {
      await _tokenStorage.write(token);
    }
  }

  /// Performs a request and unwraps the JSON object the Store API answers.
  Future<Map<String, dynamic>> request(
    String method,
    String path, {
    Map<String, dynamic>? query,
    Object? body,
  }) async {
    try {
      final response = await dio.request<Map<String, dynamic>>(
        path,
        data: body,
        queryParameters: _cleanQuery(query),
        options: Options(method: method),
      );
      return response.data ?? const {};
    } on DioException catch (error) {
      throw MedusaException.fromDio(error);
    }
  }

  Future<Map<String, dynamic>> get(
    String path, {
    Map<String, dynamic>? query,
  }) => request('GET', path, query: query);

  Future<Map<String, dynamic>> post(
    String path, {
    Object? body,
    Map<String, dynamic>? query,
  }) => request(
    'POST',
    path,
    body: body ?? const <String, dynamic>{},
    query: query,
  );

  Future<Map<String, dynamic>> delete(
    String path, {
    Map<String, dynamic>? query,
  }) => request('DELETE', path, query: query);

  /// Drops null values; Medusa rejects `?region_id=null`.
  Map<String, dynamic>? _cleanQuery(Map<String, dynamic>? query) {
    if (query == null) return null;
    final cleaned = <String, dynamic>{};
    for (final entry in query.entries) {
      final value = entry.value;
      if (value == null) continue;
      if (value is String && value.isEmpty) continue;
      cleaned[entry.key] = value;
    }
    return cleaned;
  }
}

class _AuthInterceptor extends Interceptor {
  _AuthInterceptor(this._client);

  final MedusaClient _client;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _client.getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }
}
