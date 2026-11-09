import 'package:medusa_mobile/api/medusa_client.dart';
import 'package:medusa_mobile/api/models/models.dart';

class CustomerApi {
  CustomerApi(this._client);

  final MedusaClient _client;

  StoreCustomer _customer(Map<String, dynamic> json) =>
      StoreCustomer.fromJson(json['customer'] as Map<String, dynamic>);

  /// The signed-in customer; throws a 401 `MedusaException` otherwise.
  Future<StoreCustomer> retrieve() async =>
      _customer(await _client.get('/store/customers/me'));

  Future<StoreCustomer> create({
    required String email,
    required String firstName,
    required String lastName,
  }) async => _customer(
    await _client.post(
      '/store/customers',
      body: {'email': email, 'first_name': firstName, 'last_name': lastName},
    ),
  );

  Future<StoreCustomer> update(Map<String, dynamic> data) async =>
      _customer(await _client.post('/store/customers/me', body: data));

  Future<List<StoreCustomerAddress>> listAddresses() async {
    final json = await _client.get('/store/customers/me/addresses');
    return (json['addresses'] as List<dynamic>? ?? [])
        .map((e) => StoreCustomerAddress.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Future<void> createAddress(Map<String, dynamic> data) =>
      _client.post('/store/customers/me/addresses', body: data);

  Future<void> updateAddress(String id, Map<String, dynamic> data) =>
      _client.post('/store/customers/me/addresses/$id', body: data);

  Future<void> deleteAddress(String id) =>
      _client.delete('/store/customers/me/addresses/$id');
}
