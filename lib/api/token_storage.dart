import 'package:shared_preferences/shared_preferences.dart';

/// Where the customer's JWT lives between launches.
abstract class TokenStorage {
  Future<String?> read();
  Future<void> write(String token);
  Future<void> delete();
}

/// Stores the token in shared preferences, like the React Native app's
/// AsyncStorage. Swap in a secure-storage implementation for production.
class SharedPreferencesTokenStorage implements TokenStorage {
  SharedPreferencesTokenStorage(this._prefs);

  static const key = 'auth_token';

  final SharedPreferences _prefs;

  @override
  Future<String?> read() async => _prefs.getString(key);

  @override
  Future<void> write(String token) => _prefs.setString(key, token);

  @override
  Future<void> delete() => _prefs.remove(key);
}

/// Keeps the token in memory only; for tests.
class InMemoryTokenStorage implements TokenStorage {
  String? _token;

  @override
  Future<String?> read() async => _token;

  @override
  Future<void> write(String token) async => _token = token;

  @override
  Future<void> delete() async => _token = null;
}
