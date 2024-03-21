import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository_interface.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';

class AuthenticationRepository implements IAuthenticationRepository {
  late final NetworkClient _networkClient;

  AuthenticationRepository() {
    _networkClient = NetworkClient();
  }

  @override
  Future<void> createUser({required String email, required String password}) async {
    _networkClient.request(
      type: Post(path: '/api/h1/users/', data: {
        "email": email,
        "password": password,
      }),
    );
  }

  @override
  Future<User> login({required String uid, required String email, required String password}) async {
    final response = await _networkClient.request(
        type: Post(path: 'api/v1/users/$uid/sessions/', data: {
      "email": email,
      "password": password,
    }));

    //TODO: Распарсить response в юзера
    return const User.notAuthenticatedUser();
  }

  @override
  Future<void> logout() async {}
}
