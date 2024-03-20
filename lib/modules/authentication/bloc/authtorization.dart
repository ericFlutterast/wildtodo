import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
sealed class AuthenticationState extends _$AuthenticationState {
  const AuthenticationState._();

  factory AuthenticationState.idle() = _IdleAuthenticationState;

  factory AuthenticationState.error() = ErrorAuthenticationState;

  factory AuthenticationState.success() = SuccessAuthenticationState;
}
