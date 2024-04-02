import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/initializer/di/dependencies_scope.dart';

class AuthenticationWidget extends StatelessWidget {
  const AuthenticationWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthenticationBloc(
        repository: DependenciesScope.of(context).authenticationRepository,
      )..add(const AuthenticationEvent.init()),
      child: child,
    );
  }
}
