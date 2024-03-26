import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wildtodo/modules/authentication/ui/screens/authentication_screen.dart';
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
              return _createPage(context: context, state: state, child: Container(color: Colors.pink));
            },
          ),
          GoRoute(
            path: '/messages',
            pageBuilder: (context, state) {
              return _createPage(context: context, state: state, child: Container(color: Colors.red));
            },
          ),
          GoRoute(
            path: '/friends',
            pageBuilder: (context, state) {
              return _createPage(context: context, state: state, child: Container(color: Colors.orange));
            },
          ),
          GoRoute(
            path: '/notification',
            pageBuilder: (context, state) {
              return _createPage(context: context, state: state, child: Container(color: Colors.green));
            },
          ),
        ],
      ),
      GoRoute(
          path: '/authentication',
          name: '/authentication',
          pageBuilder: (context, state) {
            return _createCupertinoPage(
              child: const AuthenticationScreen(),
            );
          }),
    ],
  );

  static Page<T> _createPage<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      child: child,
      key: state.pageKey,
      transitionDuration: const Duration(milliseconds: 500),
      reverseTransitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (context, animation, animationSecondary, thisChild) {
        return FadeTransition(
          opacity: Tween<double>(begin: 0.3, end: 1).animate(animation),
          child: thisChild,
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
