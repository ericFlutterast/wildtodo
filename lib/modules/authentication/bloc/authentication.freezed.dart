// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$LoginAuthenticationEvent value) login,
    required TResult Function(_$LogoutAuthenticationEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoginAuthenticationEvent value)? login,
    TResult? Function(_$LogoutAuthenticationEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginAuthenticationEvent value)? login,
    TResult Function(_$LogoutAuthenticationEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$$LoginAuthenticationEventImplCopyWith<$Res> {
  factory _$$$LoginAuthenticationEventImplCopyWith(
          _$$LoginAuthenticationEventImpl value,
          $Res Function(_$$LoginAuthenticationEventImpl) then) =
      __$$$LoginAuthenticationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password});
}

/// @nodoc
class __$$$LoginAuthenticationEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$$LoginAuthenticationEventImpl>
    implements _$$$LoginAuthenticationEventImplCopyWith<$Res> {
  __$$$LoginAuthenticationEventImplCopyWithImpl(
      _$$LoginAuthenticationEventImpl _value,
      $Res Function(_$$LoginAuthenticationEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
  }) {
    return _then(_$$LoginAuthenticationEventImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$$LoginAuthenticationEventImpl extends _$LoginAuthenticationEvent {
  const _$$LoginAuthenticationEventImpl(
      {required this.login, required this.password})
      : super._();

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.login(login: $login, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LoginAuthenticationEventImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$LoginAuthenticationEventImplCopyWith<_$$LoginAuthenticationEventImpl>
      get copyWith => __$$$LoginAuthenticationEventImplCopyWithImpl<
          _$$LoginAuthenticationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() logout,
  }) {
    return login(this.login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? logout,
  }) {
    return login?.call(this.login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this.login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$LoginAuthenticationEvent value) login,
    required TResult Function(_$LogoutAuthenticationEvent value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoginAuthenticationEvent value)? login,
    TResult? Function(_$LogoutAuthenticationEvent value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginAuthenticationEvent value)? login,
    TResult Function(_$LogoutAuthenticationEvent value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _$LoginAuthenticationEvent extends AuthenticationEvent {
  const factory _$LoginAuthenticationEvent(
      {required final String login,
      required final String password}) = _$$LoginAuthenticationEventImpl;
  const _$LoginAuthenticationEvent._() : super._();

  String get login;
  String get password;
  @JsonKey(ignore: true)
  _$$$LoginAuthenticationEventImplCopyWith<_$$LoginAuthenticationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$$LogoutAuthenticationEventImplCopyWith<$Res> {
  factory _$$$LogoutAuthenticationEventImplCopyWith(
          _$$LogoutAuthenticationEventImpl value,
          $Res Function(_$$LogoutAuthenticationEventImpl) then) =
      __$$$LogoutAuthenticationEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$$LogoutAuthenticationEventImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$$LogoutAuthenticationEventImpl>
    implements _$$$LogoutAuthenticationEventImplCopyWith<$Res> {
  __$$$LogoutAuthenticationEventImplCopyWithImpl(
      _$$LogoutAuthenticationEventImpl _value,
      $Res Function(_$$LogoutAuthenticationEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$$LogoutAuthenticationEventImpl extends _$LogoutAuthenticationEvent {
  const _$$LogoutAuthenticationEventImpl() : super._();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$LogoutAuthenticationEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) login,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? login,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? login,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$LoginAuthenticationEvent value) login,
    required TResult Function(_$LogoutAuthenticationEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoginAuthenticationEvent value)? login,
    TResult? Function(_$LogoutAuthenticationEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoginAuthenticationEvent value)? login,
    TResult Function(_$LogoutAuthenticationEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _$LogoutAuthenticationEvent extends AuthenticationEvent {
  const factory _$LogoutAuthenticationEvent() =
      _$$LogoutAuthenticationEventImpl;
  const _$LogoutAuthenticationEvent._() : super._();
}

/// @nodoc
mixin _$AuthenticationState {
  User get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(User user) inProgress,
    required TResult Function(User user) unAuthenticated,
    required TResult Function(User user, String message) error,
    required TResult Function(User user) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(User user)? inProgress,
    TResult? Function(User user)? unAuthenticated,
    TResult? Function(User user, String message)? error,
    TResult? Function(User user)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(User user)? inProgress,
    TResult Function(User user)? unAuthenticated,
    TResult Function(User user, String message)? error,
    TResult Function(User user)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(UnAuthenticatedAuthenticationState value)
        unAuthenticated,
    required TResult Function(ErrorAuthenticatedAuthenticationState value)
        error,
    required TResult Function(SuccessAuthenticatedAuthenticationState value)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(InProgressAuthenticationState value)? inProgress,
    TResult? Function(UnAuthenticatedAuthenticationState value)?
        unAuthenticated,
    TResult? Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult? Function(SuccessAuthenticatedAuthenticationState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(UnAuthenticatedAuthenticationState value)? unAuthenticated,
    TResult Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult Function(SuccessAuthenticatedAuthenticationState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticatedAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticatedAuthenticationStateImplCopyWith(
          _$AuthenticatedAuthenticationStateImpl value,
          $Res Function(_$AuthenticatedAuthenticationStateImpl) then) =
      __$$AuthenticatedAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$AuthenticatedAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$AuthenticatedAuthenticationStateImpl>
    implements _$$AuthenticatedAuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticatedAuthenticationStateImplCopyWithImpl(
      _$AuthenticatedAuthenticationStateImpl _value,
      $Res Function(_$AuthenticatedAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthenticatedAuthenticationStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthenticatedAuthenticationStateImpl
    extends _AuthenticatedAuthenticationState {
  const _$AuthenticatedAuthenticationStateImpl({required this.user})
      : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedAuthenticationStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedAuthenticationStateImplCopyWith<
          _$AuthenticatedAuthenticationStateImpl>
      get copyWith => __$$AuthenticatedAuthenticationStateImplCopyWithImpl<
          _$AuthenticatedAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(User user) inProgress,
    required TResult Function(User user) unAuthenticated,
    required TResult Function(User user, String message) error,
    required TResult Function(User user) success,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(User user)? inProgress,
    TResult? Function(User user)? unAuthenticated,
    TResult? Function(User user, String message)? error,
    TResult? Function(User user)? success,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(User user)? inProgress,
    TResult Function(User user)? unAuthenticated,
    TResult Function(User user, String message)? error,
    TResult Function(User user)? success,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(UnAuthenticatedAuthenticationState value)
        unAuthenticated,
    required TResult Function(ErrorAuthenticatedAuthenticationState value)
        error,
    required TResult Function(SuccessAuthenticatedAuthenticationState value)
        success,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(InProgressAuthenticationState value)? inProgress,
    TResult? Function(UnAuthenticatedAuthenticationState value)?
        unAuthenticated,
    TResult? Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult? Function(SuccessAuthenticatedAuthenticationState value)? success,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(UnAuthenticatedAuthenticationState value)? unAuthenticated,
    TResult Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult Function(SuccessAuthenticatedAuthenticationState value)? success,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthenticatedAuthenticationState extends AuthenticationState {
  const factory _AuthenticatedAuthenticationState({required final User user}) =
      _$AuthenticatedAuthenticationStateImpl;
  const _AuthenticatedAuthenticationState._() : super._();

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticatedAuthenticationStateImplCopyWith<
          _$AuthenticatedAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InProgressAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$InProgressAuthenticationStateImplCopyWith(
          _$InProgressAuthenticationStateImpl value,
          $Res Function(_$InProgressAuthenticationStateImpl) then) =
      __$$InProgressAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$InProgressAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$InProgressAuthenticationStateImpl>
    implements _$$InProgressAuthenticationStateImplCopyWith<$Res> {
  __$$InProgressAuthenticationStateImplCopyWithImpl(
      _$InProgressAuthenticationStateImpl _value,
      $Res Function(_$InProgressAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$InProgressAuthenticationStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$InProgressAuthenticationStateImpl
    extends InProgressAuthenticationState {
  const _$InProgressAuthenticationStateImpl(
      {this.user = const User.notAuthenticatedUser()})
      : super._();

  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.inProgress(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InProgressAuthenticationStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InProgressAuthenticationStateImplCopyWith<
          _$InProgressAuthenticationStateImpl>
      get copyWith => __$$InProgressAuthenticationStateImplCopyWithImpl<
          _$InProgressAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(User user) inProgress,
    required TResult Function(User user) unAuthenticated,
    required TResult Function(User user, String message) error,
    required TResult Function(User user) success,
  }) {
    return inProgress(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(User user)? inProgress,
    TResult? Function(User user)? unAuthenticated,
    TResult? Function(User user, String message)? error,
    TResult? Function(User user)? success,
  }) {
    return inProgress?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(User user)? inProgress,
    TResult Function(User user)? unAuthenticated,
    TResult Function(User user, String message)? error,
    TResult Function(User user)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(UnAuthenticatedAuthenticationState value)
        unAuthenticated,
    required TResult Function(ErrorAuthenticatedAuthenticationState value)
        error,
    required TResult Function(SuccessAuthenticatedAuthenticationState value)
        success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(InProgressAuthenticationState value)? inProgress,
    TResult? Function(UnAuthenticatedAuthenticationState value)?
        unAuthenticated,
    TResult? Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult? Function(SuccessAuthenticatedAuthenticationState value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(UnAuthenticatedAuthenticationState value)? unAuthenticated,
    TResult Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult Function(SuccessAuthenticatedAuthenticationState value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class InProgressAuthenticationState extends AuthenticationState {
  const factory InProgressAuthenticationState({final User user}) =
      _$InProgressAuthenticationStateImpl;
  const InProgressAuthenticationState._() : super._();

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$InProgressAuthenticationStateImplCopyWith<
          _$InProgressAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthenticatedAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$UnAuthenticatedAuthenticationStateImplCopyWith(
          _$UnAuthenticatedAuthenticationStateImpl value,
          $Res Function(_$UnAuthenticatedAuthenticationStateImpl) then) =
      __$$UnAuthenticatedAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$UnAuthenticatedAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$UnAuthenticatedAuthenticationStateImpl>
    implements _$$UnAuthenticatedAuthenticationStateImplCopyWith<$Res> {
  __$$UnAuthenticatedAuthenticationStateImplCopyWithImpl(
      _$UnAuthenticatedAuthenticationStateImpl _value,
      $Res Function(_$UnAuthenticatedAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UnAuthenticatedAuthenticationStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$UnAuthenticatedAuthenticationStateImpl
    extends UnAuthenticatedAuthenticationState {
  _$UnAuthenticatedAuthenticationStateImpl(
      {this.user = const User.notAuthenticatedUser()})
      : super._();

  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthenticatedAuthenticationStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnAuthenticatedAuthenticationStateImplCopyWith<
          _$UnAuthenticatedAuthenticationStateImpl>
      get copyWith => __$$UnAuthenticatedAuthenticationStateImplCopyWithImpl<
          _$UnAuthenticatedAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(User user) inProgress,
    required TResult Function(User user) unAuthenticated,
    required TResult Function(User user, String message) error,
    required TResult Function(User user) success,
  }) {
    return unAuthenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(User user)? inProgress,
    TResult? Function(User user)? unAuthenticated,
    TResult? Function(User user, String message)? error,
    TResult? Function(User user)? success,
  }) {
    return unAuthenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(User user)? inProgress,
    TResult Function(User user)? unAuthenticated,
    TResult Function(User user, String message)? error,
    TResult Function(User user)? success,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(UnAuthenticatedAuthenticationState value)
        unAuthenticated,
    required TResult Function(ErrorAuthenticatedAuthenticationState value)
        error,
    required TResult Function(SuccessAuthenticatedAuthenticationState value)
        success,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(InProgressAuthenticationState value)? inProgress,
    TResult? Function(UnAuthenticatedAuthenticationState value)?
        unAuthenticated,
    TResult? Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult? Function(SuccessAuthenticatedAuthenticationState value)? success,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(UnAuthenticatedAuthenticationState value)? unAuthenticated,
    TResult Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult Function(SuccessAuthenticatedAuthenticationState value)? success,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticatedAuthenticationState extends AuthenticationState {
  factory UnAuthenticatedAuthenticationState({final User user}) =
      _$UnAuthenticatedAuthenticationStateImpl;
  UnAuthenticatedAuthenticationState._() : super._();

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$UnAuthenticatedAuthenticationStateImplCopyWith<
          _$UnAuthenticatedAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAuthenticatedAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$ErrorAuthenticatedAuthenticationStateImplCopyWith(
          _$ErrorAuthenticatedAuthenticationStateImpl value,
          $Res Function(_$ErrorAuthenticatedAuthenticationStateImpl) then) =
      __$$ErrorAuthenticatedAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, String message});
}

/// @nodoc
class __$$ErrorAuthenticatedAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$ErrorAuthenticatedAuthenticationStateImpl>
    implements _$$ErrorAuthenticatedAuthenticationStateImplCopyWith<$Res> {
  __$$ErrorAuthenticatedAuthenticationStateImplCopyWithImpl(
      _$ErrorAuthenticatedAuthenticationStateImpl _value,
      $Res Function(_$ErrorAuthenticatedAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? message = null,
  }) {
    return _then(_$ErrorAuthenticatedAuthenticationStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAuthenticatedAuthenticationStateImpl
    extends ErrorAuthenticatedAuthenticationState {
  _$ErrorAuthenticatedAuthenticationStateImpl(
      {this.user = const User.notAuthenticatedUser(),
      this.message = 'Произошла ошибка'})
      : super._();

  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.error(user: $user, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAuthenticatedAuthenticationStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAuthenticatedAuthenticationStateImplCopyWith<
          _$ErrorAuthenticatedAuthenticationStateImpl>
      get copyWith => __$$ErrorAuthenticatedAuthenticationStateImplCopyWithImpl<
          _$ErrorAuthenticatedAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(User user) inProgress,
    required TResult Function(User user) unAuthenticated,
    required TResult Function(User user, String message) error,
    required TResult Function(User user) success,
  }) {
    return error(user, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(User user)? inProgress,
    TResult? Function(User user)? unAuthenticated,
    TResult? Function(User user, String message)? error,
    TResult? Function(User user)? success,
  }) {
    return error?.call(user, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(User user)? inProgress,
    TResult Function(User user)? unAuthenticated,
    TResult Function(User user, String message)? error,
    TResult Function(User user)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(user, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(UnAuthenticatedAuthenticationState value)
        unAuthenticated,
    required TResult Function(ErrorAuthenticatedAuthenticationState value)
        error,
    required TResult Function(SuccessAuthenticatedAuthenticationState value)
        success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(InProgressAuthenticationState value)? inProgress,
    TResult? Function(UnAuthenticatedAuthenticationState value)?
        unAuthenticated,
    TResult? Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult? Function(SuccessAuthenticatedAuthenticationState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(UnAuthenticatedAuthenticationState value)? unAuthenticated,
    TResult Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult Function(SuccessAuthenticatedAuthenticationState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAuthenticatedAuthenticationState
    extends AuthenticationState {
  factory ErrorAuthenticatedAuthenticationState(
      {final User user,
      final String message}) = _$ErrorAuthenticatedAuthenticationStateImpl;
  ErrorAuthenticatedAuthenticationState._() : super._();

  @override
  User get user;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorAuthenticatedAuthenticationStateImplCopyWith<
          _$ErrorAuthenticatedAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessAuthenticatedAuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$SuccessAuthenticatedAuthenticationStateImplCopyWith(
          _$SuccessAuthenticatedAuthenticationStateImpl value,
          $Res Function(_$SuccessAuthenticatedAuthenticationStateImpl) then) =
      __$$SuccessAuthenticatedAuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$SuccessAuthenticatedAuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res,
        _$SuccessAuthenticatedAuthenticationStateImpl>
    implements _$$SuccessAuthenticatedAuthenticationStateImplCopyWith<$Res> {
  __$$SuccessAuthenticatedAuthenticationStateImplCopyWithImpl(
      _$SuccessAuthenticatedAuthenticationStateImpl _value,
      $Res Function(_$SuccessAuthenticatedAuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SuccessAuthenticatedAuthenticationStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$SuccessAuthenticatedAuthenticationStateImpl
    extends SuccessAuthenticatedAuthenticationState {
  _$SuccessAuthenticatedAuthenticationStateImpl(
      {this.user = const User.notAuthenticatedUser()})
      : super._();

  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.success(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAuthenticatedAuthenticationStateImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAuthenticatedAuthenticationStateImplCopyWith<
          _$SuccessAuthenticatedAuthenticationStateImpl>
      get copyWith =>
          __$$SuccessAuthenticatedAuthenticationStateImplCopyWithImpl<
              _$SuccessAuthenticatedAuthenticationStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authenticated,
    required TResult Function(User user) inProgress,
    required TResult Function(User user) unAuthenticated,
    required TResult Function(User user, String message) error,
    required TResult Function(User user) success,
  }) {
    return success(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? authenticated,
    TResult? Function(User user)? inProgress,
    TResult? Function(User user)? unAuthenticated,
    TResult? Function(User user, String message)? error,
    TResult? Function(User user)? success,
  }) {
    return success?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authenticated,
    TResult Function(User user)? inProgress,
    TResult Function(User user)? unAuthenticated,
    TResult Function(User user, String message)? error,
    TResult Function(User user)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticatedAuthenticationState value)
        authenticated,
    required TResult Function(InProgressAuthenticationState value) inProgress,
    required TResult Function(UnAuthenticatedAuthenticationState value)
        unAuthenticated,
    required TResult Function(ErrorAuthenticatedAuthenticationState value)
        error,
    required TResult Function(SuccessAuthenticatedAuthenticationState value)
        success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult? Function(InProgressAuthenticationState value)? inProgress,
    TResult? Function(UnAuthenticatedAuthenticationState value)?
        unAuthenticated,
    TResult? Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult? Function(SuccessAuthenticatedAuthenticationState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticatedAuthenticationState value)? authenticated,
    TResult Function(InProgressAuthenticationState value)? inProgress,
    TResult Function(UnAuthenticatedAuthenticationState value)? unAuthenticated,
    TResult Function(ErrorAuthenticatedAuthenticationState value)? error,
    TResult Function(SuccessAuthenticatedAuthenticationState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessAuthenticatedAuthenticationState
    extends AuthenticationState {
  factory SuccessAuthenticatedAuthenticationState({final User user}) =
      _$SuccessAuthenticatedAuthenticationStateImpl;
  SuccessAuthenticatedAuthenticationState._() : super._();

  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$SuccessAuthenticatedAuthenticationStateImplCopyWith<
          _$SuccessAuthenticatedAuthenticationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
