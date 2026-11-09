import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

/// Filters for `GET /store/products`.
class ProductListParams {
  const ProductListParams({
    this.limit,
    this.offset,
    this.regionId,
    this.fields,
    this.order,
    this.q,
    this.categoryIds,
    this.collectionIds,
  });

  final int? limit;
  final int? offset;
  final String? regionId;
  final String? fields;
  final String? order;
  final String? q;
  final List<String>? categoryIds;
  final List<String>? collectionIds;

  ProductListParams copyWith({
    int? limit,
    int? offset,
    String? regionId,
    String? fields,
    String? order,
    String? q,
    List<String>? categoryIds,
    List<String>? collectionIds,
  }) => ProductListParams(
    limit: limit ?? this.limit,
    offset: offset ?? this.offset,
    regionId: regionId ?? this.regionId,
    fields: fields ?? this.fields,
    order: order ?? this.order,
    q: q ?? this.q,
    categoryIds: categoryIds ?? this.categoryIds,
    collectionIds: collectionIds ?? this.collectionIds,
  );

  Map<String, dynamic> toQuery() => {
    'limit': limit,
    'offset': offset,
    'region_id': regionId,
    'fields': fields,
    'order': order,
    'q': q,
    'category_id': categoryIds,
    'collection_id': collectionIds,
  };

  /// Identifies this query for caching, the way React Query keys do.
  @override
  String toString() => toQuery().toString();
}

class ProductListResponse {
  const ProductListResponse({
    required this.products,
    required this.count,
    required this.offset,
    required this.limit,
  });

  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      ProductListResponse(
        products: (json['products'] as List<dynamic>? ?? [])
            .map((e) => StoreProduct.fromJson(e as Map<String, dynamic>))
            .toList(),
        count: (json['count'] as num?)?.toInt() ?? 0,
        offset: (json['offset'] as num?)?.toInt() ?? 0,
        limit: (json['limit'] as num?)?.toInt() ?? 0,
      );

  final List<StoreProduct> products;
  final int count;
  final int offset;
  final int limit;
}

class ProductApi {
  ProductApi(this._client);

  final MedusaClient _client;

  /// The field set that adds region prices to the list response.
  static const priceFields = '*variants.calculated_price';

  Future<ProductListResponse> list(ProductListParams params) async {
    final json = await _client.get('/store/products', query: params.toQuery());
    return ProductListResponse.fromJson(json);
  }

  Future<StoreProduct> retrieve(
    String id, {
    String? regionId,
    String? fields,
  }) async {
    final json = await _client.get(
      '/store/products/$id',
      query: {'region_id': regionId, 'fields': fields},
    );
    return StoreProduct.fromJson(json['product'] as Map<String, dynamic>);
  }
}
