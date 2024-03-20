import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';

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

  ///если аунтефицирован вернем пользователя иначе null
  User? get authenticationOrNull => map<User?>(
        authenticated: (state) => state.user,
        inProgress: (_) => const User.notAuthenticatedUser(),
        unAuthenticated: (_) => null,
      );

  bool get isProgress => maybeMap<bool>(
        inProgress: (_) => true,
        orElse: () => false,
      );

  ///Аунтефицирован
  const factory AuthenticationState.authenticated({
    required final User user,
  }) = _AuthenticatedAuthenticationState;

  ///В обработке
  const factory AuthenticationState.inProgress() = InProgressAuthenticationState;

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
