import 'package:data/src/cache/secure_storage_manager.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthCache {
  final SecureStorageManager secureStorage;

  AuthCache({
    required this.secureStorage,
  });

  Future<void> saveSessionData(dynamic json) async {
    await secureStorage.putString(
        SecureStorageManager.keyUserData, json as String);
  }

  Future<void> saveAuthToken(String token) async {
    await secureStorage.putString(SecureStorageManager.keyAccessToken, token);
  }

  Future<String?> getSessionData() {
    return secureStorage.getString(SecureStorageManager.keyUserData);
  }

  Future<void> clearSessionData() async {
    await secureStorage.clearAll();
  }

  Future<String?> getFcmToken() {
    return secureStorage.getString(SecureStorageManager.keyFcmToken);
  }
}
