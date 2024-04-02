import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/common/secure_storage/secure_storage.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository.dart';

final class AppDependencies {
  AppDependencies._();

  late final SecureStorage _secureStorage;
  late final NetworkClient _networkClient;
  late final AuthenticationRepository _authenticationRepository;

  SecureStorage get secureStorage => _secureStorage;
  NetworkClient get networkClient => _networkClient;
  AuthenticationRepository get authenticationRepository => _authenticationRepository;

  static final AppDependencies instance = AppDependencies._();

  void init() {
    //TODO: тут может быть свич на сборку
    _secureStorage = SecureStorage.instance;
    _networkClient = NetworkClient();
    _authenticationRepository = AuthenticationRepository(
      secureStorage: _secureStorage,
      networkClient: _networkClient,
    );
  }
}
