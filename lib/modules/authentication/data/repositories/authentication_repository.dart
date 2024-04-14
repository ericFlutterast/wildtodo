import 'package:dio/dio.dart';
import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/common/jwt_decoder/jwt_decoder.dart';
import 'package:wildtodo/common/secure_storage/secure_storage.dart';
import 'package:wildtodo/common/secure_storage/secure_storage_keys.dart';
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
        path: '/api/v1/users/me/sessions/',
        data: {
          "email": email,
          "password": password,
        },
      ),
    );

    assert(response != null);
    final List results = await Future.wait([
      _secureStorage.write(key: SecureStorageKeys.accessToken, value: response!.data['access_token']),
      _secureStorage.write(key: SecureStorageKeys.refreshToken, value: response.data['refresh_token']),
      _getUserInfo(accessToken: response.data['access_token']),
    ]);

    return results[2];
  }

  @override
  Future<void> logout({required String uid}) async {
    final accessToken = await _secureStorage.read(key: SecureStorageKeys.accessToken);
    assert(accessToken != null, 'Если нет токена то пользователь не залогинен');
    final tokenData = JwtDecoder.decode(token: accessToken!);

    await Future.wait([
      _networkClient.request(
        type: Delete(
          path: '/api/v1/protected/users/me/sessions/${tokenData['iat']}/',
          options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
        ),
      ),
      _secureStorage.delete(key: SecureStorageKeys.accessToken),
      _secureStorage.delete(key: SecureStorageKeys.refreshToken),
    ]);
  }

  @override
  Future<User> init() async {
    final accessToken = await _secureStorage.read(key: SecureStorageKeys.accessToken);

    if (accessToken == null) return const User.notAuthenticatedUser();

    return await _getUserInfo(accessToken: accessToken);
  }

  Future<User> _getUserInfo({required String accessToken}) async {
    final response = await _networkClient.request(
      type: Get(
        path: '/api/v1/protected/users/me/',
        options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      ),
    );

    //TODO: когда появяться дополнительные поля у юзера сделать сериализацию
    return User.authenticatedUser(
      lastName: '',
      email: response!.data['email'],
      fistName: response.data['name'] ?? '',
      phoneNumber: '',
      photoUrl: '',
      uid: response.data['user_id'],
    );
  }
}
