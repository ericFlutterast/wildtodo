import 'package:flutter/material.dart';
import 'package:wildtodo/common/navigation/routs.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wildtodo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      routes: routs,
    );
  }
}
