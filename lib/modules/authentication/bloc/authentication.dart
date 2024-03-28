import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wildtodo/modules/authentication/data/repositories/authentication_repository_interface.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';

part 'authentication.freezed.dart';

//ивенты
@freezed
sealed class AuthenticationEvent with _$AuthenticationEvent {
  const AuthenticationEvent._();

  ///Залогинится
  const factory AuthenticationEvent.login({
    required String email,
    required String password,
  }) = _$LoginAuthenticationEvent;

  ///Разлогиниться
  const factory AuthenticationEvent.logout() = _$LogoutAuthenticationEvent;

  ///Создать пользователя
  const factory AuthenticationEvent.createUser({
    required String email,
    required String password,
  }) = _$CreateUserAuthenticationEvent;

  ///Проверка: авторизован пользователь или нет
  const factory AuthenticationEvent.init() = _$InitAuthenticationEvent;
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
        error: (_) => false,
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
  AuthenticationBloc({
    final User? user,
    required IAuthenticationRepository repository,
  })  : _repository = repository,
        super(
          user?.when<AuthenticationState>(
                  authenticated: (user) => AuthenticationState.authenticated(user: user),
                  notAuthenticated: () => const AuthenticationState.unAuthenticated()) ??
              const AuthenticationState.unAuthenticated(),
        ) {
    on<AuthenticationEvent>(
      (event, emit) => event.map(
        init: (event) => _init(event, emit),
        login: (event) => _login(event, emit),
        logout: (event) => _logout(event, emit),
        createUser: (event) => _createUser(event, emit),
      ),
      transformer: bloc_concurrency.droppable(),
    );
  }

  final IAuthenticationRepository _repository;

  Future<void> _init(_$InitAuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    try {
      emit(AuthenticationState.inProgress(user: state.user));
      final result = await _repository.init();

      if (result) {
        emit(AuthenticationState.authenticated(user: state.user));
      } else {
        emit(AuthenticationState.unAuthenticated(user: state.user));
      }
    } catch (_) {
      emit(const AuthenticationState.error(
        message: 'Не удалось войти в профиль',
        user: User.notAuthenticatedUser(),
      ));
    }
  }

  Future<void> _login(_$LoginAuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    try {
      emit(AuthenticationState.inProgress(user: state.user));
      final newUser = await _repository.login(email: event.email, password: event.password);
      emit(AuthenticationState.success(user: newUser));
    } on DioException catch (error) {
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

  Future<void> _createUser(_$CreateUserAuthenticationEvent event, Emitter<AuthenticationState> emit) async {
    try {
      emit(AuthenticationState.inProgress(user: state.user));

      await _repository.createUser(email: event.email, password: event.password);
      final newUser = await _repository.login(email: event.email, password: event.password);

      emit(AuthenticationState.success(user: newUser));
    } on DioException catch (_) {
      emit(
        AuthenticationState.error(
          user: state.user,
          message: 'Не удалось зарегистрироваться, проверьте подключение к интернету',
        ),
      );
    } on Object catch (error, stackTracer) {
      emit(AuthenticationState.error(user: state.user, message: 'Ошибка регистрации'));
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
