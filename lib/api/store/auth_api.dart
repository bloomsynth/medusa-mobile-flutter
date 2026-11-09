import 'package:medusa_mobile/api/medusa_client.dart';

/// Customer authentication with Medusa's `emailpass` provider, as JWT.
class AuthApi {
  AuthApi(this._client);

  final MedusaClient _client;

  /// Signs in and stores the token for the following requests.
  Future<void> login({required String email, required String password}) async {
    final json = await _client.post(
      '/auth/customer/emailpass',
      body: {'email': email, 'password': password},
    );
    await _client.setToken(json['token'] as String);
  }

  /// Creates the auth identity and stores its registration token, which lets
  /// `POST /store/customers` create the customer record.
  Future<void> register({
    required String email,
    required String password,
  }) async {
    final json = await _client.post(
      '/auth/customer/emailpass/register',
      body: {'email': email, 'password': password},
    );
    await _client.setToken(json['token'] as String);
  }

  /// Forgets the token. The JWT itself stays valid until it expires, as with
  /// the JS SDK.
  Future<void> logout() => _client.setToken(null);
}
