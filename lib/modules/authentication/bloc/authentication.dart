import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';

part 'authentication.freezed.dart';

//ивенты
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

//состояния
@freezed
sealed class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  ///если аунтефицирован вернем пользователя иначе null
  User? get authenticationOrNull => maybeMap<User?>(
        unAuthenticated: (_) => null,
        orElse: () => user.authenticatedOrNull,
      );

  bool get isProgress => maybeMap<bool>(
        authenticated: (_) => false,
        unAuthenticated: (_) => false,
        orElse: () => true,
      );

  ///Аунтефицирован
  const factory AuthenticationState.authenticated({
    required final User user,
  }) = _AuthenticatedAuthenticationState;

  ///В обработке
  const factory AuthenticationState.inProgress({
    @Default(User.notAuthenticatedUser()) final User user,
  }) = InProgressAuthenticationState;

  ///Не аунтифицирован
  const factory AuthenticationState.unAuthenticated({
    @Default(User.notAuthenticatedUser()) final User user,
  }) = UnAuthenticatedAuthenticationState;

  ///ошибка
  const factory AuthenticationState.error({
    @Default(User.notAuthenticatedUser()) final User user,
    @Default('Произошла ошибка') final String message,
  }) = ErrorAuthenticatedAuthenticationState;

  ///успех
  const factory AuthenticationState.success({
    @Default(User.notAuthenticatedUser()) final User user,
  }) = SuccessAuthenticatedAuthenticationState;
}

//блок
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthenticationRepository _repository;

  AuthenticationBloc({
    final User? user,
    required IAuthenticationRepository repository,
  })  : _repository = repository,
        super(
          user?.when<AuthenticationState>(
                  authenticated: (user) => AuthenticationState.authenticated(user: user),
                  notAuthenticated: () => AuthenticationState.unAuthenticated()) ??
              AuthenticationState.unAuthenticated(),
        ) {
    on<AuthenticationEvent>(
      (event, emit) => event.map(
        login: (event) => _login(event, emit),
        logout: (event) => _logout(event, emit),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  Future<void> _login(_$LoginAuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    try {
      emit(AuthenticationState.inProgress(user: state.user));
      final newUser = await _repository.login(login: event.login, password: event.password);
      emit(AuthenticationState.success(user: newUser));
    } on FormatException {
      //Network error handler
      emit(AuthenticationState.error(user: state.user, message: 'Не удалось войти, проверьте подключение к интернету'));
    } on Object catch (error, stackTracer) {
      emit(AuthenticationState.error(user: state.user, message: 'Ошибка авторизации'));
      rethrow;
    } finally {
      if (state.user.isAuthenticated) {
        emit(AuthenticationState.authenticated(user: state.user));
      } else {
        emit(const AuthenticationState.unAuthenticated());
      }
    }
  }

  Future<void> _logout(_$LogoutAuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    try {
      emit(AuthenticationState.inProgress(user: state.user));
      //...
      emit(const AuthenticationState.success(user: User.notAuthenticatedUser()));
    } on FormatException {
      //Network error handler
      emit(AuthenticationState.error(user: state.user, message: 'Не удалось войти, проверьте подключение к интернету'));
    } on Object catch (error, stackTracer) {
      emit(AuthenticationState.error(user: state.user, message: 'Ошибка авторизации'));
      rethrow;
    } finally {
      if (state.user.isAuthenticated) {
        emit(AuthenticationState.authenticated(user: state.user));
      } else {
        emit(const AuthenticationState.unAuthenticated());
      }
    }
  }
}
