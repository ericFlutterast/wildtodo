import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wildtodo/modules/home/screens/home_screen.dart';

final GlobalKey<NavigatorState> _navigationState = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _bottomNavigationKey = GlobalKey<NavigatorState>();

class CustomRouter {
  static final router = GoRouter(
    initialLocation: '/tasks',
    navigatorKey: _navigationState,
    routes: [
      ShellRoute(
        navigatorKey: _bottomNavigationKey,
        builder: (context, state, child) {
          return HomeNavigationScreen(child: child);
        },
        routes: [
          GoRoute(
            path: '/tasks',
            pageBuilder: (context, state) {
              return _createPage(context: context, child: Container(color: Colors.pink));
            },
          ),
          GoRoute(
            path: '/messages',
            pageBuilder: (context, state) {
              return _createPage(context: context, child: Container(color: Colors.red));
            },
          ),
          GoRoute(
            path: '/friends',
            pageBuilder: (context, state) {
              return _createPage(context: context, child: Container(color: Colors.orange));
            },
          ),
          GoRoute(
            path: '/notification',
            pageBuilder: (context, state) {
              return _createPage(context: context, child: Container(color: Colors.green));
            },
          ),
        ],
      ),
    ],
  );

  static Page<T> _createPage<T>({
    required BuildContext context,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      child: child,
      transitionDuration: const Duration(milliseconds: 500),
      reverseTransitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, animationSecondary, child) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0.3, end: 1).animate(animation),
          child: child,
        );
      },
    );
  }

  static Page<T> _createCupertinoPage<T>({required Widget child}) {
    return CupertinoPage(child: child);
  }

  static Page<T> _createMaterialPage<T>({required Widget child}) {
    return MaterialPage(child: child);
  }
}
