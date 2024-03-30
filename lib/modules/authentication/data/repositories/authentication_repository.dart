import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/common/secure_storage/secure_storage.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository_interface.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  AuthenticationRepository({
    required SecureStorage secureStorage,
    required NetworkClient networkClient,
  })  : _networkClient = networkClient,
        _secureStorage = secureStorage;

  final NetworkClient _networkClient;
  final SecureStorage _secureStorage;

  @override
  Future<String> createUser({required String email, required String password}) async {
    final response = await _networkClient.request(
      type: Post(
        path: '/api/v1/users/',
        data: {"email": email, "password": password},
      ),
    );

    return response?.data['user_id'];
  }

  @override
  Future<User> login({required String email, required String password}) async {
    final response = await _networkClient.request(
      type: Post(
        path: '/api/v1/sessions/',
        data: {
          "email": email,
          "password": password,
        },
      ),
    );

    if (response != null) {
      await Future.wait([
        _secureStorage.write(key: 'access_token', value: response.data['access_token']),
        _secureStorage.write(key: 'refresh_token', value: response.data['refresh_token']),
      ]);
    }

    //TODO: Распарсить response в юзера
    return const User.authenticatedUser(
      lastName: '',
      email: '',
      fistName: '',
      phoneNumber: '',
      photoUrl: '',
      uid: '1111',
    );
  }

  @override
  Future<void> logout() async {}

  @override
  Future<bool> init() async {
    final refreshToken = await _secureStorage.read(key: 'refresh_token');
    return refreshToken != null;
  }
}
