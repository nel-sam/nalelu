import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:nalelu/services/auth/token_collection.dart';

class TokenKeys {
  static const idToken = 'id_token';
  static const accessToken = 'access_token';
  static const refreshToken = 'refresh_token';
}

class TokenStorage {
  final _storage = const FlutterSecureStorage();

  Future<void> saveTokens(TokenCollection tokens) async {
    await _storage.write(
      key: TokenKeys.idToken,
      value: tokens.idToken,
    );
    await _storage.write(
      key: TokenKeys.accessToken,
      value: tokens.accessToken,
    );
    await _storage.write(
      key: TokenKeys.refreshToken,
      value: tokens.refreshToken,
    );
  }

  Future<TokenCollection?> getStoredTokens() async {
    final accessToken = await _storage.read(key: TokenKeys.accessToken);
    final idToken = await _storage.read(key: TokenKeys.idToken);
    final refreshToken = await _storage.read(key: TokenKeys.refreshToken);

    if (accessToken == null) return null;
    return TokenCollection(
      idToken: idToken ?? '',
      accessToken: accessToken,
      refreshToken: refreshToken ?? '',
    );
  }

  Future<void> clearTokens() async {
    await _storage.delete(key: TokenKeys.accessToken);
    await _storage.delete(key: TokenKeys.refreshToken);
    await _storage.delete(key: TokenKeys.idToken);
  }
}
