import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//TODO: скорее всего уйдет в инициализатор
class AuthenticationWidget extends InheritedWidget {
  const AuthenticationWidget({
    super.key,
    required Bloc bloc,
    required super.child,
  }) : _bloc = bloc;

  final Bloc _bloc;

  get authenticationBloc => _bloc;

  static AuthenticationWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthenticationWidget>() as AuthenticationWidget;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}

extension AutnebticationBloc on BuildContext {
  get authenticationBloc => AuthenticationWidget.of(this).authenticationBloc;
}
