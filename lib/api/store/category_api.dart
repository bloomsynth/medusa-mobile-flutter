import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

class CategoryApi {
  CategoryApi(this._client);

  final MedusaClient _client;

  Future<List<StoreProductCategory>> list() async {
    final json = await _client.get('/store/product-categories');
    return (json['product_categories'] as List<dynamic>? ?? [])
        .map((e) => StoreProductCategory.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<StoreProductCategory> retrieve(String id) async {
    final json = await _client.get('/store/product-categories/$id');
    return StoreProductCategory.fromJson(
      json['product_category'] as Map<String, dynamic>,
    );
  }
}
