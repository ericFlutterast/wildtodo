import 'package:dio/dio.dart';
import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/common/secure_storage/secure_storage.dart';
import 'package:wildtodo/common/secure_storage/secure_storage_keys.dart';
import 'package:wildtodo/modules/profile/data/i_profile_data_change_repo.dart';

final class ProfileDataChangeRepo implements IProfileChangeDataRepo {
  const ProfileDataChangeRepo({
    required NetworkClient networkClient,
    required SecureStorage secureStorage,
  })  : _networkClient = networkClient,
        _secureStorage = secureStorage;

  final NetworkClient _networkClient;
  final SecureStorage _secureStorage;

  @override
  Future<void> changeName({required String name}) async {
    final accessToken = await _secureStorage.read(key: SecureStorageKeys.accessToken);

    final response = await _networkClient.request(
      type: Put(
        path: '/api/v1/protected/users/me/name',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
        data: {"name": name},
      ),
    );
  }

  @override
  Future<void> changeSex({required int sex}) async {
    final accessToken = await _secureStorage.read(key: SecureStorageKeys.accessToken);

    final response = await _networkClient.request(
      type: Put(
        path: '/api/v1/protected/users/me/sex',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
        data: {'sex_id': sex},
      ),
    );
  }

  @override
  Future<void> updateEmail({required String email}) async {
    final accessToken = await _secureStorage.read(key: SecureStorageKeys.accessToken);

    final response = await _networkClient.request(
      type: Put(
        path: '/api/v1/protected/users/me/email',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
        data: {'email': email},
      ),
    );
  }

  @override
  Future<void> updatePassword({required String password}) async {
    final accessToken = await _secureStorage.read(key: SecureStorageKeys.accessToken);

    final response = await _networkClient.request(
      type: Put(
        path: '/api/v1/protected/users/me/email',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
        data: {
          "password": password,
        },
      ),
    );
  }
}
