import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        return child!;
      },
    );
  }
}
