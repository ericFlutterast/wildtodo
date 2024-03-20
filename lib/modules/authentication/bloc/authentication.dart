import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';

@freezed
sealed class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  ///Залогинится
  const factory AuthenticationEvent.login({
    required String login,
    required String password,
  }) = _$LoginAuthenticationEvent;

  ///Разлогиниться
  const factory AuthenticationEvent.logout() = _$LogoutAuthenticationEvent;
}

@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  ///Аунтефицирован
  factory AuthenticationState.authenticated() = _AuthenticatedAuthenticationState;

  ///В обработке
  factory AuthenticationState.inProgress() = InProgressAuthenticationState;

  ///Не аунтифицирован
  factory AuthenticationState.unAuthenticated() = UnAuthenticatedAuthenticationState;
}

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(AuthenticationState.unAuthenticated()) {
    on<AuthenticationEvent>((event, emit) {
      // здесь будет маппер обработки ивентов
    });
  }
}
