import 'package:flutter/material.dart';

class CustomNavigator {
  static push(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return screen;
        },
      ),
    );
  }

  static pushNamed({required BuildContext context, required String routeName, Object? arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  static pop<T>(BuildContext context, [T? result]) {
    Navigator.pop(context, result);
  }

  static showModal(BuildContext context, Widget modal) {
    Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
        fullscreenDialog: true,
        pageBuilder: (context, _, __) {
          return modal;
        },
        transitionDuration: const Duration(milliseconds: 600),
        reverseTransitionDuration: const Duration(milliseconds: 400),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(animation),
            child: child,
          );
        },
      ),
    );
  }
}
