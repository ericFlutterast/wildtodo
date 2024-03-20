import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc.freezed.dart';

@freezed
sealed class AuthenticationEvent extends _$AuthenticationEvent {
  const AuthenticationEvent._();

  const factory AuthenticationEvent.create() = _$CreateAuthenticationEvent;

  const factory AuthenticationEvent.read() = _$ReadAuthenticationEvent;

  const factory AuthenticationEvent.update() = _$UpdateAuthenticationEvent;

  const factory AuthenticationEvent.delete() = _$DeleteAuthenticationEvent;
}

@freezed
sealed class AuthenticationState extends _$AuthenticationState {
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
