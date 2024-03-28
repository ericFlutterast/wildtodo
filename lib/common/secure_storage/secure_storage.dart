import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  SecureStorage._() {
    _secureStorage = const FlutterSecureStorage();
  }

  late final FlutterSecureStorage _secureStorage;

  static final SecureStorage instance = SecureStorage._();

  Future<void> write({required final String key, required final String value}) async {
    await _secureStorage.write(key: key, value: value);
  }

  Future<String?> read({required final String key}) async {
    return await _secureStorage.read(key: key);
  }

  Future<void> delete({required final String key}) async {
    await _secureStorage.delete(key: key);
  }
}
