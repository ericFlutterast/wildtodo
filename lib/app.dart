import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository.dart';
import 'package:wildtodo/modules/authentication/ui/widgets/authentication_widget.dart';

class AppRoot extends StatelessWidget {
  final GoRouter router;

  const AppRoot({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wildtodo',
      theme: ThemeData(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return AuthenticationWidget(
          bloc: AuthenticationBloc(
            repository: AuthenticationRepository(
              networkClient: NetworkClient(),
            ),
          ),
          child: child!,
        );
      },
    );
  }
}
