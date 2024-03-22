import 'package:flutter/material.dart';
import 'package:wildtodo/modules/home/screens/home_screen.dart';

typedef AppRout = Map<String, Widget Function(BuildContext)>;

final AppRout routs = {
  '/': (context) => const Wildtodo(),
  'messages': (context) => Container(color: Colors.pink),
  'friends': (context) => Container(color: Colors.green),
  'notification': (context) => Container(color: Colors.orange),
};
