import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver._();

  factory AppBlocObserver.instance() {
    return _singleton ??= AppBlocObserver._();
  }

  static AppBlocObserver? _singleton;

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('${bloc.runtimeType} создан');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('${bloc.runtimeType} called $error');
    print(error);
    print(stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    if (event == null) return;
    print('${bloc.runtimeType}.add${event.runtimeType}');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('${bloc.runtimeType} закрыт');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    final currentState = transition.currentState;
    final event = transition.event;
    final nextState = transition.nextState;
    print(
        'bloc ${bloc.runtimeType} called event ${event.runtimeType}: ${currentState.runtimeType} -> ${nextState.runtimeType}');
  }
}
