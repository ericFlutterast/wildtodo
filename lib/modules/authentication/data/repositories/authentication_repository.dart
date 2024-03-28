import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository_interface.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  final NetworkClient _networkClient;

  AuthenticationRepository({
    required NetworkClient networkClient,
  }) : _networkClient = networkClient;

  @override
  Future<String> createUser({required String email, required String password}) async {
    final response = await _networkClient.request(
      type: Post(
        path: '/api/v1/users/',
        data: {
          "email": email,
          "password": password,
        },
      ),
    );

    return response?.data['user_id'];
  }

  @override
  Future<User> login({required String email, required String password}) async {
    //TODO: распарсить токены и получить данные о пользователе
    final response = await _networkClient.request(
      type: Post(
        path: '/api/v1/sessions/',
        data: {
          "email": email,
          "password": password,
        },
      ),
    );

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
}
