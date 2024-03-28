import 'package:fk_user_agent/fk_user_agent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wildtodo/common/dio/network_client.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository.dart';

class AppRoot extends StatefulWidget {
  final GoRouter router;

  const AppRoot({super.key, required this.router});

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
    return MaterialApp.router(
      title: 'Wildtodo',
      theme: ThemeData(),
      routerConfig: widget.router,
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return BlocProvider(
          create: (context) => AuthenticationBloc(
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
