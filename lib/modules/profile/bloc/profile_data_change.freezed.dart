// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_data_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileDataChangeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String name) changeName,
    required TResult Function(int sex) changeSex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String name)? changeName,
    TResult? Function(int sex)? changeSex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String name)? changeName,
    TResult Function(int sex)? changeSex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailProfileDataChangeEvent value)
        updateEmail,
    required TResult Function(_UpdatePsswordProfileDataChangeEvent value)
        updatePassword,
    required TResult Function(_ChangeNameProfileDataChangeEvent value)
        changeName,
    required TResult Function(_ChangeSexProfileDataChangeEvent value) changeSex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult? Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult? Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult? Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataChangeEventCopyWith<$Res> {
  factory $ProfileDataChangeEventCopyWith(ProfileDataChangeEvent value,
          $Res Function(ProfileDataChangeEvent) then) =
      _$ProfileDataChangeEventCopyWithImpl<$Res, ProfileDataChangeEvent>;
}

/// @nodoc
class _$ProfileDataChangeEventCopyWithImpl<$Res,
        $Val extends ProfileDataChangeEvent>
    implements $ProfileDataChangeEventCopyWith<$Res> {
  _$ProfileDataChangeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateEmailProfileDataChangeEventImplCopyWith<$Res> {
  factory _$$UpdateEmailProfileDataChangeEventImplCopyWith(
          _$UpdateEmailProfileDataChangeEventImpl value,
          $Res Function(_$UpdateEmailProfileDataChangeEventImpl) then) =
      __$$UpdateEmailProfileDataChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$UpdateEmailProfileDataChangeEventImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeEventCopyWithImpl<$Res,
        _$UpdateEmailProfileDataChangeEventImpl>
    implements _$$UpdateEmailProfileDataChangeEventImplCopyWith<$Res> {
  __$$UpdateEmailProfileDataChangeEventImplCopyWithImpl(
      _$UpdateEmailProfileDataChangeEventImpl _value,
      $Res Function(_$UpdateEmailProfileDataChangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$UpdateEmailProfileDataChangeEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateEmailProfileDataChangeEventImpl
    extends _UpdateEmailProfileDataChangeEvent {
  const _$UpdateEmailProfileDataChangeEventImpl({required this.email})
      : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'ProfileDataChangeEvent.updateEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmailProfileDataChangeEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmailProfileDataChangeEventImplCopyWith<
          _$UpdateEmailProfileDataChangeEventImpl>
      get copyWith => __$$UpdateEmailProfileDataChangeEventImplCopyWithImpl<
          _$UpdateEmailProfileDataChangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String name) changeName,
    required TResult Function(int sex) changeSex,
  }) {
    return updateEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String name)? changeName,
    TResult? Function(int sex)? changeSex,
  }) {
    return updateEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String name)? changeName,
    TResult Function(int sex)? changeSex,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailProfileDataChangeEvent value)
        updateEmail,
    required TResult Function(_UpdatePsswordProfileDataChangeEvent value)
        updatePassword,
    required TResult Function(_ChangeNameProfileDataChangeEvent value)
        changeName,
    required TResult Function(_ChangeSexProfileDataChangeEvent value) changeSex,
  }) {
    return updateEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult? Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult? Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult? Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
  }) {
    return updateEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
    required TResult orElse(),
  }) {
    if (updateEmail != null) {
      return updateEmail(this);
    }
    return orElse();
  }
}

abstract class _UpdateEmailProfileDataChangeEvent
    extends ProfileDataChangeEvent {
  const factory _UpdateEmailProfileDataChangeEvent(
      {required final String email}) = _$UpdateEmailProfileDataChangeEventImpl;
  const _UpdateEmailProfileDataChangeEvent._() : super._();

  String get email;
  @JsonKey(ignore: true)
  _$$UpdateEmailProfileDataChangeEventImplCopyWith<
          _$UpdateEmailProfileDataChangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePsswordProfileDataChangeEventImplCopyWith<$Res> {
  factory _$$UpdatePsswordProfileDataChangeEventImplCopyWith(
          _$UpdatePsswordProfileDataChangeEventImpl value,
          $Res Function(_$UpdatePsswordProfileDataChangeEventImpl) then) =
      __$$UpdatePsswordProfileDataChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$UpdatePsswordProfileDataChangeEventImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeEventCopyWithImpl<$Res,
        _$UpdatePsswordProfileDataChangeEventImpl>
    implements _$$UpdatePsswordProfileDataChangeEventImplCopyWith<$Res> {
  __$$UpdatePsswordProfileDataChangeEventImplCopyWithImpl(
      _$UpdatePsswordProfileDataChangeEventImpl _value,
      $Res Function(_$UpdatePsswordProfileDataChangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$UpdatePsswordProfileDataChangeEventImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdatePsswordProfileDataChangeEventImpl
    extends _UpdatePsswordProfileDataChangeEvent {
  const _$UpdatePsswordProfileDataChangeEventImpl({required this.password})
      : super._();

  @override
  final String password;

  @override
  String toString() {
    return 'ProfileDataChangeEvent.updatePassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePsswordProfileDataChangeEventImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePsswordProfileDataChangeEventImplCopyWith<
          _$UpdatePsswordProfileDataChangeEventImpl>
      get copyWith => __$$UpdatePsswordProfileDataChangeEventImplCopyWithImpl<
          _$UpdatePsswordProfileDataChangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String name) changeName,
    required TResult Function(int sex) changeSex,
  }) {
    return updatePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String name)? changeName,
    TResult? Function(int sex)? changeSex,
  }) {
    return updatePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String name)? changeName,
    TResult Function(int sex)? changeSex,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailProfileDataChangeEvent value)
        updateEmail,
    required TResult Function(_UpdatePsswordProfileDataChangeEvent value)
        updatePassword,
    required TResult Function(_ChangeNameProfileDataChangeEvent value)
        changeName,
    required TResult Function(_ChangeSexProfileDataChangeEvent value) changeSex,
  }) {
    return updatePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult? Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult? Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult? Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
  }) {
    return updatePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
    required TResult orElse(),
  }) {
    if (updatePassword != null) {
      return updatePassword(this);
    }
    return orElse();
  }
}

abstract class _UpdatePsswordProfileDataChangeEvent
    extends ProfileDataChangeEvent {
  const factory _UpdatePsswordProfileDataChangeEvent(
          {required final String password}) =
      _$UpdatePsswordProfileDataChangeEventImpl;
  const _UpdatePsswordProfileDataChangeEvent._() : super._();

  String get password;
  @JsonKey(ignore: true)
  _$$UpdatePsswordProfileDataChangeEventImplCopyWith<
          _$UpdatePsswordProfileDataChangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNameProfileDataChangeEventImplCopyWith<$Res> {
  factory _$$ChangeNameProfileDataChangeEventImplCopyWith(
          _$ChangeNameProfileDataChangeEventImpl value,
          $Res Function(_$ChangeNameProfileDataChangeEventImpl) then) =
      __$$ChangeNameProfileDataChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ChangeNameProfileDataChangeEventImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeEventCopyWithImpl<$Res,
        _$ChangeNameProfileDataChangeEventImpl>
    implements _$$ChangeNameProfileDataChangeEventImplCopyWith<$Res> {
  __$$ChangeNameProfileDataChangeEventImplCopyWithImpl(
      _$ChangeNameProfileDataChangeEventImpl _value,
      $Res Function(_$ChangeNameProfileDataChangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ChangeNameProfileDataChangeEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeNameProfileDataChangeEventImpl
    extends _ChangeNameProfileDataChangeEvent {
  const _$ChangeNameProfileDataChangeEventImpl({required this.name})
      : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'ProfileDataChangeEvent.changeName(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNameProfileDataChangeEventImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNameProfileDataChangeEventImplCopyWith<
          _$ChangeNameProfileDataChangeEventImpl>
      get copyWith => __$$ChangeNameProfileDataChangeEventImplCopyWithImpl<
          _$ChangeNameProfileDataChangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String name) changeName,
    required TResult Function(int sex) changeSex,
  }) {
    return changeName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String name)? changeName,
    TResult? Function(int sex)? changeSex,
  }) {
    return changeName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String name)? changeName,
    TResult Function(int sex)? changeSex,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailProfileDataChangeEvent value)
        updateEmail,
    required TResult Function(_UpdatePsswordProfileDataChangeEvent value)
        updatePassword,
    required TResult Function(_ChangeNameProfileDataChangeEvent value)
        changeName,
    required TResult Function(_ChangeSexProfileDataChangeEvent value) changeSex,
  }) {
    return changeName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult? Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult? Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult? Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
  }) {
    return changeName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
    required TResult orElse(),
  }) {
    if (changeName != null) {
      return changeName(this);
    }
    return orElse();
  }
}

abstract class _ChangeNameProfileDataChangeEvent
    extends ProfileDataChangeEvent {
  const factory _ChangeNameProfileDataChangeEvent(
      {required final String name}) = _$ChangeNameProfileDataChangeEventImpl;
  const _ChangeNameProfileDataChangeEvent._() : super._();

  String get name;
  @JsonKey(ignore: true)
  _$$ChangeNameProfileDataChangeEventImplCopyWith<
          _$ChangeNameProfileDataChangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSexProfileDataChangeEventImplCopyWith<$Res> {
  factory _$$ChangeSexProfileDataChangeEventImplCopyWith(
          _$ChangeSexProfileDataChangeEventImpl value,
          $Res Function(_$ChangeSexProfileDataChangeEventImpl) then) =
      __$$ChangeSexProfileDataChangeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int sex});
}

/// @nodoc
class __$$ChangeSexProfileDataChangeEventImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeEventCopyWithImpl<$Res,
        _$ChangeSexProfileDataChangeEventImpl>
    implements _$$ChangeSexProfileDataChangeEventImplCopyWith<$Res> {
  __$$ChangeSexProfileDataChangeEventImplCopyWithImpl(
      _$ChangeSexProfileDataChangeEventImpl _value,
      $Res Function(_$ChangeSexProfileDataChangeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sex = null,
  }) {
    return _then(_$ChangeSexProfileDataChangeEventImpl(
      sex: null == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeSexProfileDataChangeEventImpl
    extends _ChangeSexProfileDataChangeEvent {
  const _$ChangeSexProfileDataChangeEventImpl({required this.sex}) : super._();

  @override
  final int sex;

  @override
  String toString() {
    return 'ProfileDataChangeEvent.changeSex(sex: $sex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSexProfileDataChangeEventImpl &&
            (identical(other.sex, sex) || other.sex == sex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSexProfileDataChangeEventImplCopyWith<
          _$ChangeSexProfileDataChangeEventImpl>
      get copyWith => __$$ChangeSexProfileDataChangeEventImplCopyWithImpl<
          _$ChangeSexProfileDataChangeEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) updateEmail,
    required TResult Function(String password) updatePassword,
    required TResult Function(String name) changeName,
    required TResult Function(int sex) changeSex,
  }) {
    return changeSex(sex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? updateEmail,
    TResult? Function(String password)? updatePassword,
    TResult? Function(String name)? changeName,
    TResult? Function(int sex)? changeSex,
  }) {
    return changeSex?.call(sex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? updateEmail,
    TResult Function(String password)? updatePassword,
    TResult Function(String name)? changeName,
    TResult Function(int sex)? changeSex,
    required TResult orElse(),
  }) {
    if (changeSex != null) {
      return changeSex(sex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateEmailProfileDataChangeEvent value)
        updateEmail,
    required TResult Function(_UpdatePsswordProfileDataChangeEvent value)
        updatePassword,
    required TResult Function(_ChangeNameProfileDataChangeEvent value)
        changeName,
    required TResult Function(_ChangeSexProfileDataChangeEvent value) changeSex,
  }) {
    return changeSex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult? Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult? Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult? Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
  }) {
    return changeSex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateEmailProfileDataChangeEvent value)? updateEmail,
    TResult Function(_UpdatePsswordProfileDataChangeEvent value)?
        updatePassword,
    TResult Function(_ChangeNameProfileDataChangeEvent value)? changeName,
    TResult Function(_ChangeSexProfileDataChangeEvent value)? changeSex,
    required TResult orElse(),
  }) {
    if (changeSex != null) {
      return changeSex(this);
    }
    return orElse();
  }
}

abstract class _ChangeSexProfileDataChangeEvent extends ProfileDataChangeEvent {
  const factory _ChangeSexProfileDataChangeEvent({required final int sex}) =
      _$ChangeSexProfileDataChangeEventImpl;
  const _ChangeSexProfileDataChangeEvent._() : super._();

  int get sex;
  @JsonKey(ignore: true)
  _$$ChangeSexProfileDataChangeEventImplCopyWith<
          _$ChangeSexProfileDataChangeEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileDataChangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nameChanging,
    required TResult Function() sexChanging,
    required TResult Function() updatingPassword,
    required TResult Function() updatingEmail,
    required TResult Function() success,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nameChanging,
    TResult? Function()? sexChanging,
    TResult? Function()? updatingPassword,
    TResult? Function()? updatingEmail,
    TResult? Function()? success,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nameChanging,
    TResult Function()? sexChanging,
    TResult Function()? updatingPassword,
    TResult Function()? updatingEmail,
    TResult Function()? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileDataChangeState value) initial,
    required TResult Function(_NameChangingProfileDataChangeState value)
        nameChanging,
    required TResult Function(SexChangingProfileDataChangeState value)
        sexChanging,
    required TResult Function(UpdatingPasswordProfileDataChangeState value)
        updatingPassword,
    required TResult Function(UpdatingupdatingEmailProfileDataChangeState value)
        updatingEmail,
    required TResult Function(SuccessProfileDataChangeState value) success,
    required TResult Function(ErrorProfileDataChangeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialProfileDataChangeState value)? initial,
    TResult? Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult? Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult? Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult? Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult? Function(SuccessProfileDataChangeState value)? success,
    TResult? Function(ErrorProfileDataChangeState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileDataChangeState value)? initial,
    TResult Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult Function(SuccessProfileDataChangeState value)? success,
    TResult Function(ErrorProfileDataChangeState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataChangeStateCopyWith<$Res> {
  factory $ProfileDataChangeStateCopyWith(ProfileDataChangeState value,
          $Res Function(ProfileDataChangeState) then) =
      _$ProfileDataChangeStateCopyWithImpl<$Res, ProfileDataChangeState>;
}

/// @nodoc
class _$ProfileDataChangeStateCopyWithImpl<$Res,
        $Val extends ProfileDataChangeState>
    implements $ProfileDataChangeStateCopyWith<$Res> {
  _$ProfileDataChangeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialProfileDataChangeStateImplCopyWith<$Res> {
  factory _$$InitialProfileDataChangeStateImplCopyWith(
          _$InitialProfileDataChangeStateImpl value,
          $Res Function(_$InitialProfileDataChangeStateImpl) then) =
      __$$InitialProfileDataChangeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialProfileDataChangeStateImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeStateCopyWithImpl<$Res,
        _$InitialProfileDataChangeStateImpl>
    implements _$$InitialProfileDataChangeStateImplCopyWith<$Res> {
  __$$InitialProfileDataChangeStateImplCopyWithImpl(
      _$InitialProfileDataChangeStateImpl _value,
      $Res Function(_$InitialProfileDataChangeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialProfileDataChangeStateImpl
    extends _InitialProfileDataChangeState {
  const _$InitialProfileDataChangeStateImpl() : super._();

  @override
  String toString() {
    return 'ProfileDataChangeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialProfileDataChangeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nameChanging,
    required TResult Function() sexChanging,
    required TResult Function() updatingPassword,
    required TResult Function() updatingEmail,
    required TResult Function() success,
    required TResult Function(String? message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nameChanging,
    TResult? Function()? sexChanging,
    TResult? Function()? updatingPassword,
    TResult? Function()? updatingEmail,
    TResult? Function()? success,
    TResult? Function(String? message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nameChanging,
    TResult Function()? sexChanging,
    TResult Function()? updatingPassword,
    TResult Function()? updatingEmail,
    TResult Function()? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileDataChangeState value) initial,
    required TResult Function(_NameChangingProfileDataChangeState value)
        nameChanging,
    required TResult Function(SexChangingProfileDataChangeState value)
        sexChanging,
    required TResult Function(UpdatingPasswordProfileDataChangeState value)
        updatingPassword,
    required TResult Function(UpdatingupdatingEmailProfileDataChangeState value)
        updatingEmail,
    required TResult Function(SuccessProfileDataChangeState value) success,
    required TResult Function(ErrorProfileDataChangeState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialProfileDataChangeState value)? initial,
    TResult? Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult? Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult? Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult? Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult? Function(SuccessProfileDataChangeState value)? success,
    TResult? Function(ErrorProfileDataChangeState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileDataChangeState value)? initial,
    TResult Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult Function(SuccessProfileDataChangeState value)? success,
    TResult Function(ErrorProfileDataChangeState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialProfileDataChangeState extends ProfileDataChangeState {
  const factory _InitialProfileDataChangeState() =
      _$InitialProfileDataChangeStateImpl;
  const _InitialProfileDataChangeState._() : super._();
}

/// @nodoc
abstract class _$$NameChangingProfileDataChangeStateImplCopyWith<$Res> {
  factory _$$NameChangingProfileDataChangeStateImplCopyWith(
          _$NameChangingProfileDataChangeStateImpl value,
          $Res Function(_$NameChangingProfileDataChangeStateImpl) then) =
      __$$NameChangingProfileDataChangeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NameChangingProfileDataChangeStateImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeStateCopyWithImpl<$Res,
        _$NameChangingProfileDataChangeStateImpl>
    implements _$$NameChangingProfileDataChangeStateImplCopyWith<$Res> {
  __$$NameChangingProfileDataChangeStateImplCopyWithImpl(
      _$NameChangingProfileDataChangeStateImpl _value,
      $Res Function(_$NameChangingProfileDataChangeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NameChangingProfileDataChangeStateImpl
    extends _NameChangingProfileDataChangeState {
  const _$NameChangingProfileDataChangeStateImpl() : super._();

  @override
  String toString() {
    return 'ProfileDataChangeState.nameChanging()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangingProfileDataChangeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nameChanging,
    required TResult Function() sexChanging,
    required TResult Function() updatingPassword,
    required TResult Function() updatingEmail,
    required TResult Function() success,
    required TResult Function(String? message) error,
  }) {
    return nameChanging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nameChanging,
    TResult? Function()? sexChanging,
    TResult? Function()? updatingPassword,
    TResult? Function()? updatingEmail,
    TResult? Function()? success,
    TResult? Function(String? message)? error,
  }) {
    return nameChanging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nameChanging,
    TResult Function()? sexChanging,
    TResult Function()? updatingPassword,
    TResult Function()? updatingEmail,
    TResult Function()? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (nameChanging != null) {
      return nameChanging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileDataChangeState value) initial,
    required TResult Function(_NameChangingProfileDataChangeState value)
        nameChanging,
    required TResult Function(SexChangingProfileDataChangeState value)
        sexChanging,
    required TResult Function(UpdatingPasswordProfileDataChangeState value)
        updatingPassword,
    required TResult Function(UpdatingupdatingEmailProfileDataChangeState value)
        updatingEmail,
    required TResult Function(SuccessProfileDataChangeState value) success,
    required TResult Function(ErrorProfileDataChangeState value) error,
  }) {
    return nameChanging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialProfileDataChangeState value)? initial,
    TResult? Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult? Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult? Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult? Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult? Function(SuccessProfileDataChangeState value)? success,
    TResult? Function(ErrorProfileDataChangeState value)? error,
  }) {
    return nameChanging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileDataChangeState value)? initial,
    TResult Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult Function(SuccessProfileDataChangeState value)? success,
    TResult Function(ErrorProfileDataChangeState value)? error,
    required TResult orElse(),
  }) {
    if (nameChanging != null) {
      return nameChanging(this);
    }
    return orElse();
  }
}

abstract class _NameChangingProfileDataChangeState
    extends ProfileDataChangeState {
  const factory _NameChangingProfileDataChangeState() =
      _$NameChangingProfileDataChangeStateImpl;
  const _NameChangingProfileDataChangeState._() : super._();
}

/// @nodoc
abstract class _$$SexChangingProfileDataChangeStateImplCopyWith<$Res> {
  factory _$$SexChangingProfileDataChangeStateImplCopyWith(
          _$SexChangingProfileDataChangeStateImpl value,
          $Res Function(_$SexChangingProfileDataChangeStateImpl) then) =
      __$$SexChangingProfileDataChangeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SexChangingProfileDataChangeStateImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeStateCopyWithImpl<$Res,
        _$SexChangingProfileDataChangeStateImpl>
    implements _$$SexChangingProfileDataChangeStateImplCopyWith<$Res> {
  __$$SexChangingProfileDataChangeStateImplCopyWithImpl(
      _$SexChangingProfileDataChangeStateImpl _value,
      $Res Function(_$SexChangingProfileDataChangeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SexChangingProfileDataChangeStateImpl
    extends SexChangingProfileDataChangeState {
  const _$SexChangingProfileDataChangeStateImpl() : super._();

  @override
  String toString() {
    return 'ProfileDataChangeState.sexChanging()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SexChangingProfileDataChangeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nameChanging,
    required TResult Function() sexChanging,
    required TResult Function() updatingPassword,
    required TResult Function() updatingEmail,
    required TResult Function() success,
    required TResult Function(String? message) error,
  }) {
    return sexChanging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nameChanging,
    TResult? Function()? sexChanging,
    TResult? Function()? updatingPassword,
    TResult? Function()? updatingEmail,
    TResult? Function()? success,
    TResult? Function(String? message)? error,
  }) {
    return sexChanging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nameChanging,
    TResult Function()? sexChanging,
    TResult Function()? updatingPassword,
    TResult Function()? updatingEmail,
    TResult Function()? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (sexChanging != null) {
      return sexChanging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileDataChangeState value) initial,
    required TResult Function(_NameChangingProfileDataChangeState value)
        nameChanging,
    required TResult Function(SexChangingProfileDataChangeState value)
        sexChanging,
    required TResult Function(UpdatingPasswordProfileDataChangeState value)
        updatingPassword,
    required TResult Function(UpdatingupdatingEmailProfileDataChangeState value)
        updatingEmail,
    required TResult Function(SuccessProfileDataChangeState value) success,
    required TResult Function(ErrorProfileDataChangeState value) error,
  }) {
    return sexChanging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialProfileDataChangeState value)? initial,
    TResult? Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult? Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult? Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult? Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult? Function(SuccessProfileDataChangeState value)? success,
    TResult? Function(ErrorProfileDataChangeState value)? error,
  }) {
    return sexChanging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileDataChangeState value)? initial,
    TResult Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult Function(SuccessProfileDataChangeState value)? success,
    TResult Function(ErrorProfileDataChangeState value)? error,
    required TResult orElse(),
  }) {
    if (sexChanging != null) {
      return sexChanging(this);
    }
    return orElse();
  }
}

abstract class SexChangingProfileDataChangeState
    extends ProfileDataChangeState {
  const factory SexChangingProfileDataChangeState() =
      _$SexChangingProfileDataChangeStateImpl;
  const SexChangingProfileDataChangeState._() : super._();
}

/// @nodoc
abstract class _$$UpdatingPasswordProfileDataChangeStateImplCopyWith<$Res> {
  factory _$$UpdatingPasswordProfileDataChangeStateImplCopyWith(
          _$UpdatingPasswordProfileDataChangeStateImpl value,
          $Res Function(_$UpdatingPasswordProfileDataChangeStateImpl) then) =
      __$$UpdatingPasswordProfileDataChangeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatingPasswordProfileDataChangeStateImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeStateCopyWithImpl<$Res,
        _$UpdatingPasswordProfileDataChangeStateImpl>
    implements _$$UpdatingPasswordProfileDataChangeStateImplCopyWith<$Res> {
  __$$UpdatingPasswordProfileDataChangeStateImplCopyWithImpl(
      _$UpdatingPasswordProfileDataChangeStateImpl _value,
      $Res Function(_$UpdatingPasswordProfileDataChangeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatingPasswordProfileDataChangeStateImpl
    extends UpdatingPasswordProfileDataChangeState {
  const _$UpdatingPasswordProfileDataChangeStateImpl() : super._();

  @override
  String toString() {
    return 'ProfileDataChangeState.updatingPassword()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatingPasswordProfileDataChangeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nameChanging,
    required TResult Function() sexChanging,
    required TResult Function() updatingPassword,
    required TResult Function() updatingEmail,
    required TResult Function() success,
    required TResult Function(String? message) error,
  }) {
    return updatingPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nameChanging,
    TResult? Function()? sexChanging,
    TResult? Function()? updatingPassword,
    TResult? Function()? updatingEmail,
    TResult? Function()? success,
    TResult? Function(String? message)? error,
  }) {
    return updatingPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nameChanging,
    TResult Function()? sexChanging,
    TResult Function()? updatingPassword,
    TResult Function()? updatingEmail,
    TResult Function()? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (updatingPassword != null) {
      return updatingPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileDataChangeState value) initial,
    required TResult Function(_NameChangingProfileDataChangeState value)
        nameChanging,
    required TResult Function(SexChangingProfileDataChangeState value)
        sexChanging,
    required TResult Function(UpdatingPasswordProfileDataChangeState value)
        updatingPassword,
    required TResult Function(UpdatingupdatingEmailProfileDataChangeState value)
        updatingEmail,
    required TResult Function(SuccessProfileDataChangeState value) success,
    required TResult Function(ErrorProfileDataChangeState value) error,
  }) {
    return updatingPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialProfileDataChangeState value)? initial,
    TResult? Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult? Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult? Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult? Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult? Function(SuccessProfileDataChangeState value)? success,
    TResult? Function(ErrorProfileDataChangeState value)? error,
  }) {
    return updatingPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileDataChangeState value)? initial,
    TResult Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult Function(SuccessProfileDataChangeState value)? success,
    TResult Function(ErrorProfileDataChangeState value)? error,
    required TResult orElse(),
  }) {
    if (updatingPassword != null) {
      return updatingPassword(this);
    }
    return orElse();
  }
}

abstract class UpdatingPasswordProfileDataChangeState
    extends ProfileDataChangeState {
  const factory UpdatingPasswordProfileDataChangeState() =
      _$UpdatingPasswordProfileDataChangeStateImpl;
  const UpdatingPasswordProfileDataChangeState._() : super._();
}

/// @nodoc
abstract class _$$UpdatingupdatingEmailProfileDataChangeStateImplCopyWith<
    $Res> {
  factory _$$UpdatingupdatingEmailProfileDataChangeStateImplCopyWith(
          _$UpdatingupdatingEmailProfileDataChangeStateImpl value,
          $Res Function(_$UpdatingupdatingEmailProfileDataChangeStateImpl)
              then) =
      __$$UpdatingupdatingEmailProfileDataChangeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdatingupdatingEmailProfileDataChangeStateImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeStateCopyWithImpl<$Res,
        _$UpdatingupdatingEmailProfileDataChangeStateImpl>
    implements
        _$$UpdatingupdatingEmailProfileDataChangeStateImplCopyWith<$Res> {
  __$$UpdatingupdatingEmailProfileDataChangeStateImplCopyWithImpl(
      _$UpdatingupdatingEmailProfileDataChangeStateImpl _value,
      $Res Function(_$UpdatingupdatingEmailProfileDataChangeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdatingupdatingEmailProfileDataChangeStateImpl
    extends UpdatingupdatingEmailProfileDataChangeState {
  const _$UpdatingupdatingEmailProfileDataChangeStateImpl() : super._();

  @override
  String toString() {
    return 'ProfileDataChangeState.updatingEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatingupdatingEmailProfileDataChangeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nameChanging,
    required TResult Function() sexChanging,
    required TResult Function() updatingPassword,
    required TResult Function() updatingEmail,
    required TResult Function() success,
    required TResult Function(String? message) error,
  }) {
    return updatingEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nameChanging,
    TResult? Function()? sexChanging,
    TResult? Function()? updatingPassword,
    TResult? Function()? updatingEmail,
    TResult? Function()? success,
    TResult? Function(String? message)? error,
  }) {
    return updatingEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nameChanging,
    TResult Function()? sexChanging,
    TResult Function()? updatingPassword,
    TResult Function()? updatingEmail,
    TResult Function()? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (updatingEmail != null) {
      return updatingEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileDataChangeState value) initial,
    required TResult Function(_NameChangingProfileDataChangeState value)
        nameChanging,
    required TResult Function(SexChangingProfileDataChangeState value)
        sexChanging,
    required TResult Function(UpdatingPasswordProfileDataChangeState value)
        updatingPassword,
    required TResult Function(UpdatingupdatingEmailProfileDataChangeState value)
        updatingEmail,
    required TResult Function(SuccessProfileDataChangeState value) success,
    required TResult Function(ErrorProfileDataChangeState value) error,
  }) {
    return updatingEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialProfileDataChangeState value)? initial,
    TResult? Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult? Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult? Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult? Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult? Function(SuccessProfileDataChangeState value)? success,
    TResult? Function(ErrorProfileDataChangeState value)? error,
  }) {
    return updatingEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileDataChangeState value)? initial,
    TResult Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult Function(SuccessProfileDataChangeState value)? success,
    TResult Function(ErrorProfileDataChangeState value)? error,
    required TResult orElse(),
  }) {
    if (updatingEmail != null) {
      return updatingEmail(this);
    }
    return orElse();
  }
}

abstract class UpdatingupdatingEmailProfileDataChangeState
    extends ProfileDataChangeState {
  const factory UpdatingupdatingEmailProfileDataChangeState() =
      _$UpdatingupdatingEmailProfileDataChangeStateImpl;
  const UpdatingupdatingEmailProfileDataChangeState._() : super._();
}

/// @nodoc
abstract class _$$SuccessProfileDataChangeStateImplCopyWith<$Res> {
  factory _$$SuccessProfileDataChangeStateImplCopyWith(
          _$SuccessProfileDataChangeStateImpl value,
          $Res Function(_$SuccessProfileDataChangeStateImpl) then) =
      __$$SuccessProfileDataChangeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessProfileDataChangeStateImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeStateCopyWithImpl<$Res,
        _$SuccessProfileDataChangeStateImpl>
    implements _$$SuccessProfileDataChangeStateImplCopyWith<$Res> {
  __$$SuccessProfileDataChangeStateImplCopyWithImpl(
      _$SuccessProfileDataChangeStateImpl _value,
      $Res Function(_$SuccessProfileDataChangeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessProfileDataChangeStateImpl
    extends SuccessProfileDataChangeState {
  const _$SuccessProfileDataChangeStateImpl() : super._();

  @override
  String toString() {
    return 'ProfileDataChangeState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessProfileDataChangeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nameChanging,
    required TResult Function() sexChanging,
    required TResult Function() updatingPassword,
    required TResult Function() updatingEmail,
    required TResult Function() success,
    required TResult Function(String? message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nameChanging,
    TResult? Function()? sexChanging,
    TResult? Function()? updatingPassword,
    TResult? Function()? updatingEmail,
    TResult? Function()? success,
    TResult? Function(String? message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nameChanging,
    TResult Function()? sexChanging,
    TResult Function()? updatingPassword,
    TResult Function()? updatingEmail,
    TResult Function()? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileDataChangeState value) initial,
    required TResult Function(_NameChangingProfileDataChangeState value)
        nameChanging,
    required TResult Function(SexChangingProfileDataChangeState value)
        sexChanging,
    required TResult Function(UpdatingPasswordProfileDataChangeState value)
        updatingPassword,
    required TResult Function(UpdatingupdatingEmailProfileDataChangeState value)
        updatingEmail,
    required TResult Function(SuccessProfileDataChangeState value) success,
    required TResult Function(ErrorProfileDataChangeState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialProfileDataChangeState value)? initial,
    TResult? Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult? Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult? Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult? Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult? Function(SuccessProfileDataChangeState value)? success,
    TResult? Function(ErrorProfileDataChangeState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileDataChangeState value)? initial,
    TResult Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult Function(SuccessProfileDataChangeState value)? success,
    TResult Function(ErrorProfileDataChangeState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessProfileDataChangeState extends ProfileDataChangeState {
  const factory SuccessProfileDataChangeState() =
      _$SuccessProfileDataChangeStateImpl;
  const SuccessProfileDataChangeState._() : super._();
}

/// @nodoc
abstract class _$$ErrorProfileDataChangeStateImplCopyWith<$Res> {
  factory _$$ErrorProfileDataChangeStateImplCopyWith(
          _$ErrorProfileDataChangeStateImpl value,
          $Res Function(_$ErrorProfileDataChangeStateImpl) then) =
      __$$ErrorProfileDataChangeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorProfileDataChangeStateImplCopyWithImpl<$Res>
    extends _$ProfileDataChangeStateCopyWithImpl<$Res,
        _$ErrorProfileDataChangeStateImpl>
    implements _$$ErrorProfileDataChangeStateImplCopyWith<$Res> {
  __$$ErrorProfileDataChangeStateImplCopyWithImpl(
      _$ErrorProfileDataChangeStateImpl _value,
      $Res Function(_$ErrorProfileDataChangeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorProfileDataChangeStateImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorProfileDataChangeStateImpl extends ErrorProfileDataChangeState {
  const _$ErrorProfileDataChangeStateImpl({this.message = 'Произошла ошибка'})
      : super._();

  @override
  @JsonKey()
  final String? message;

  @override
  String toString() {
    return 'ProfileDataChangeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorProfileDataChangeStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorProfileDataChangeStateImplCopyWith<_$ErrorProfileDataChangeStateImpl>
      get copyWith => __$$ErrorProfileDataChangeStateImplCopyWithImpl<
          _$ErrorProfileDataChangeStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() nameChanging,
    required TResult Function() sexChanging,
    required TResult Function() updatingPassword,
    required TResult Function() updatingEmail,
    required TResult Function() success,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? nameChanging,
    TResult? Function()? sexChanging,
    TResult? Function()? updatingPassword,
    TResult? Function()? updatingEmail,
    TResult? Function()? success,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? nameChanging,
    TResult Function()? sexChanging,
    TResult Function()? updatingPassword,
    TResult Function()? updatingEmail,
    TResult Function()? success,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialProfileDataChangeState value) initial,
    required TResult Function(_NameChangingProfileDataChangeState value)
        nameChanging,
    required TResult Function(SexChangingProfileDataChangeState value)
        sexChanging,
    required TResult Function(UpdatingPasswordProfileDataChangeState value)
        updatingPassword,
    required TResult Function(UpdatingupdatingEmailProfileDataChangeState value)
        updatingEmail,
    required TResult Function(SuccessProfileDataChangeState value) success,
    required TResult Function(ErrorProfileDataChangeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialProfileDataChangeState value)? initial,
    TResult? Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult? Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult? Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult? Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult? Function(SuccessProfileDataChangeState value)? success,
    TResult? Function(ErrorProfileDataChangeState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialProfileDataChangeState value)? initial,
    TResult Function(_NameChangingProfileDataChangeState value)? nameChanging,
    TResult Function(SexChangingProfileDataChangeState value)? sexChanging,
    TResult Function(UpdatingPasswordProfileDataChangeState value)?
        updatingPassword,
    TResult Function(UpdatingupdatingEmailProfileDataChangeState value)?
        updatingEmail,
    TResult Function(SuccessProfileDataChangeState value)? success,
    TResult Function(ErrorProfileDataChangeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProfileDataChangeState extends ProfileDataChangeState {
  const factory ErrorProfileDataChangeState({final String? message}) =
      _$ErrorProfileDataChangeStateImpl;
  const ErrorProfileDataChangeState._() : super._();

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorProfileDataChangeStateImplCopyWith<_$ErrorProfileDataChangeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
