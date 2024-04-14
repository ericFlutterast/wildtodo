import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wildtodo/modules/authentication/ui/screens/authentication_screen.dart';
import 'package:wildtodo/modules/authentication/ui/screens/registration_screen.dart';
import 'package:wildtodo/modules/home/screens/home_screen.dart';
import 'package:wildtodo/modules/profile/ui/screens/profile_screen.dart';
import 'package:wildtodo/modules/profile/ui/screens/profile_settings_screen.dart';
import 'package:wildtodo/modules/tasks/screen/tasks_screen.dart';

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
              return _createPage(
                context: context,
                state: state,
                child: const TasksScreen(),
              );
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
          return _createPlatformPage(
            child: const AuthenticationScreen(),
          );
        },
        routes: [
          GoRoute(
            path: 'registration',
            name: 'registration',
            pageBuilder: (context, state) {
              return _createPlatformPage(child: const RegistrationScreen());
            },
          ),
        ],
      ),
      GoRoute(
        path: '/profile',
        name: 'profile',
        pageBuilder: (context, state) {
          return _createPlatformPage(child: const ProfileScreen());
        },
        routes: [
          GoRoute(
            path: 'profile_settings',
            name: 'profile_settings',
            pageBuilder: (context, state) {
              return _createPage(
                state: state,
                context: context,
                child: ProfileSettingsScreen.getPage(context),
              );
            },
          )
        ],
      )
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
          opacity: Tween<double>(begin: 0.0, end: 1).animate(animation),
          child: thisChild,
        );
      },
    );
  }

  static Page<T> _createPlatformPage<T>({required Widget child}) {
    if (Platform.isAndroid) return MaterialPage<T>(child: child);
    if (Platform.isIOS) return CupertinoPage<T>(child: child);

    return CustomTransitionPage(
      child: child,
      transitionsBuilder: (_, __, ___, ____) {
        return child;
      },
    );
  }
}
