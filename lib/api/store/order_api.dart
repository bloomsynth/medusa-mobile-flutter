import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

class OrderApi {
  OrderApi(this._client);

  final MedusaClient _client;

  /// The signed-in customer's orders, newest first.
  Future<List<StoreOrder>> list() async {
    final json = await _client.get(
      '/store/orders',
      query: {'order': '-created_at'},
    );
    return (json['orders'] as List<dynamic>? ?? [])
        .map((e) => StoreOrder.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<StoreOrder> retrieve(String id) async {
    final json = await _client.get('/store/orders/$id');
    return StoreOrder.fromJson(json['order'] as Map<String, dynamic>);
  }
}
