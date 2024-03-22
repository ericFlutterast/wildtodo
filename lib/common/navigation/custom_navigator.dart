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

  static pop<T>(BuildContext context, [T? result]) {
    Navigator.pop(context, result);
  }

  static showModal(BuildContext context, Widget modal) {
    Navigator.push(
      context,
      PageRouteBuilder(
        opaque: false,
        fullscreenDialog: true,
        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
          return modal;
        },
        transitionsBuilder: (context, animation, animationSecond, child) {
          return modal;
        },
      ),
    );
  }
}
