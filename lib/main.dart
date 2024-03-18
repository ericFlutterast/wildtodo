import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wildtodo/app.dart';
import 'package:wildtodo/common/bloc/bloc_observer.dart';
import 'package:wildtodo/core/theme/core/theme_provider.dart';

import 'core/theme/wild_dark_theme.dart';

Future<void> main() async {
  Bloc.observer = AppBlocObserver();
  Bloc.transformer = bloc_concurrency.sequential<Object?>();

  runApp(
    ThemeProvider(
      theme: WildDarkTheme(),
      child: const AppRoot(),
    ),
  );
}
