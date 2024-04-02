import 'package:fk_user_agent/fk_user_agent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/initializer/di/app_dependencies.dart';
import 'package:wildtodo/modules/initializer/di/dependencies_scope.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({
    super.key,
    required this.router,
    required this.dependencies,
  });

  final GoRouter router;
  final AppDependencies dependencies;

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await FkUserAgent.init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConfig(
      validationMessages: {
        'required': (_) => 'Это поле обязательное',
        'email': (_) => 'Не корректный формат почты',
      },
      child: MaterialApp.router(
        title: 'Wildtodo',
        theme: ThemeData(),
        routerConfig: widget.router,
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return DependenciesScope(
            appDependencies: widget.dependencies,
            child: BlocProvider(
              create: (context) => AuthenticationBloc(
                repository: DependenciesScope.of(context).authenticationRepository,
              )..add(const AuthenticationEvent.init()),
              child: child!,
            ),
          );
        },
      ),
    );
  }
}
