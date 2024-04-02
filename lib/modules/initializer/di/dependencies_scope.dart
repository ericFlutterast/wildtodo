import 'package:flutter/cupertino.dart';
import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/common/secure_storage/secure_storage.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository.dart';
import 'package:wildtodo/modules/initializer/di/app_dependencies.dart';

final class DependenciesScope extends InheritedWidget {
  const DependenciesScope({
    super.key,
    required super.child,
    required AppDependencies appDependencies,
  }) : _appDependencies = appDependencies;

  final AppDependencies _appDependencies;

  SecureStorage get secureStorage => _appDependencies.secureStorage;
  NetworkClient get networkClient => _appDependencies.networkClient;
  AuthenticationRepository get authenticationRepository => _appDependencies.authenticationRepository;

  static DependenciesScope of(BuildContext context) {
    final DependenciesScope? provider = context.dependOnInheritedWidgetOfExactType<DependenciesScope>();
    assert(provider != null, 'Dependencies not found');
    return provider!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}
