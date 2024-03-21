import 'package:wildtodo/modules/authentication/models/user.dart';

abstract interface class IAuthenticationRepository {
  Future<void> logout();
  Future<User> login({required String uid, required String email, required String password});
  Future<String> createUser({required String email, required String password});
}
