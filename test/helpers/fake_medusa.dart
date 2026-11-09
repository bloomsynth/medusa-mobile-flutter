import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/token_storage.dart';

/// An error answer for [FakeMedusa.on].
class FakeError {
  const FakeError(this.status, this.message);
  final int status;
  final String message;
}

/// A Store API stand-in: answers `METHOD /path` with canned JSON and records
/// every request, so tests run the real client, models and cubits.
class FakeMedusa implements HttpClientAdapter {
  final _handlers = <String, Object? Function(RequestOptions)>{};
  final requests = <RequestOptions>[];

  void on(
    String method,
    String path,
    Object? Function(RequestOptions request) handler,
  ) => _handlers['$method $path'] = handler;

  List<RequestOptions> requestsTo(String method, String path) =>
      requests.where((r) => r.method == method && r.path == path).toList();

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    final handler = _handlers['${options.method} ${options.path}'];
    final result = handler == null
        ? FakeError(404, 'No handler for ${options.method} ${options.path}')
        : handler(options);
    final headers = {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    };
    if (result is FakeError) {
      return ResponseBody.fromString(
        jsonEncode({'message': result.message, 'type': 'error'}),
        result.status,
        headers: headers,
      );
    }
    return ResponseBody.fromString(jsonEncode(result), 200, headers: headers);
  }

  @override
  void close({bool force = false}) {}
}

({MedusaClient client, FakeMedusa server}) buildTestClient({
  String publishableKey = 'pk_test',
}) {
  final server = FakeMedusa();
  final dio = Dio(BaseOptions(baseUrl: 'http://medusa.test'))
    ..httpClientAdapter = server;
  final client = MedusaClient(
    tokenStorage: InMemoryTokenStorage(),
    baseUrl: 'http://medusa.test',
    publishableKey: publishableKey,
    dio: dio,
  );
  return (client: client, server: server);
}

Map<String, dynamic> regionJson({
  String id = 'reg_eu',
  String currency = 'eur',
}) => {
  'id': id,
  'name': id,
  'currency_code': currency,
  'countries': [
    {'iso_2': 'de', 'display_name': 'Germany'},
  ],
};

Map<String, dynamic> cartJson({
  String id = 'cart_1',
  String regionId = 'reg_eu',
  List<Map<String, dynamic>> items = const [],
  List<Map<String, dynamic>> promotions = const [],
  List<Map<String, dynamic>> shippingMethods = const [],
  Map<String, dynamic>? paymentCollection,
  Map<String, dynamic>? shippingAddress,
  String? email,
  num total = 0,
}) => {
  'id': id,
  'currency_code': 'eur',
  'region_id': regionId,
  'email': email,
  'items': items,
  'promotions': promotions,
  'shipping_methods': shippingMethods,
  'payment_collection': paymentCollection,
  'shipping_address': shippingAddress,
  'total': total,
};

Map<String, dynamic> lineItemJson({
  String id = 'item_1',
  int quantity = 1,
  String productId = 'prod_1',
  String variantId = 'variant_1',
}) => {
  'id': id,
  'quantity': quantity,
  'unit_price': 10,
  'product_id': productId,
  'variant_id': variantId,
  'product_title': 'Shirt',
};
