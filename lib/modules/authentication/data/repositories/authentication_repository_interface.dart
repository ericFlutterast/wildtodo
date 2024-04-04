import 'package:wildtodo/modules/authentication/models/user.dart';

abstract interface class IAuthenticationRepository {
  Future<User> init();
  Future<void> logout({required String uid});
  Future<User> login({required String email, required String password});
  Future<String> createUser({required String email, required String password});
}
