import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

class RegionApi {
  RegionApi(this._client);

  final MedusaClient _client;

  Future<List<StoreRegion>> list() async {
    final json = await _client.get('/store/regions');
    return (json['regions'] as List<dynamic>? ?? [])
        .map((e) => StoreRegion.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<StoreRegion> retrieve(String id) async {
    final json = await _client.get('/store/regions/$id');
    return StoreRegion.fromJson(json['region'] as Map<String, dynamic>);
  }
}
