import 'package:wildtodo/modules/authentication/models/user.dart';

abstract interface class IAuthenticationRepository {
  Future<void> logout();
  Future<User> login({required final String login, required final String password});
  Future<void> createUser({required final String login, required final String password});
}
