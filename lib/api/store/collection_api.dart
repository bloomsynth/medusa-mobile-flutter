import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

class CollectionApi {
  CollectionApi(this._client);

  final MedusaClient _client;

  Future<List<StoreCollection>> list() async {
    final json = await _client.get('/store/collections');
    return (json['collections'] as List<dynamic>? ?? [])
        .map((e) => StoreCollection.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<StoreCollection> retrieve(String id) async {
    final json = await _client.get('/store/collections/$id');
    return StoreCollection.fromJson(json['collection'] as Map<String, dynamic>);
  }
}
