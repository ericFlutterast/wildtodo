import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wildtodo/modules/profile/data/i_profile_data_change_repo.dart';

part 'profile_data_change.freezed.dart';

@freezed
sealed class ProfileDataChangeEvent with _$ProfileDataChangeEvent {
  const ProfileDataChangeEvent._();

  ///Изменить email
  @With<_InitialEmitter>()
  @With<_SuccessEmitter>()
  @With<_ErrorEmitter>()
  @With<_UpdatingEmailEmitter>()
  const factory ProfileDataChangeEvent.updateEmail({
    required final String email,
  }) = _UpdateEmailProfileDataChangeEvent;

  ///Изменить пароль
  @With<_UpdatingPasswordEmitter>()
  @With<_InitialEmitter>()
  @With<_SuccessEmitter>()
  @With<_ErrorEmitter>()
  const factory ProfileDataChangeEvent.updatePassword({
    required final String password,
  }) = _UpdatePsswordProfileDataChangeEvent;

  ///Изменить имя
  @With<_NameChangingEmitter>()
  @With<_InitialEmitter>()
  @With<_SuccessEmitter>()
  @With<_ErrorEmitter>()
  const factory ProfileDataChangeEvent.changeName({
    required final String name,
  }) = _ChangeNameProfileDataChangeEvent;

  ///1 - not installed, 2 - men, 3 - woman
  ///Изменить пол
  @With<_SexChangingEmitter>()
  @With<_InitialEmitter>()
  @With<_SuccessEmitter>()
  @With<_ErrorEmitter>()
  const factory ProfileDataChangeEvent.changeSex({
    required final int sex,
  }) = _ChangeSexProfileDataChangeEvent;
}

@freezed
sealed class ProfileDataChangeState with _$ProfileDataChangeState {
  const ProfileDataChangeState._();

  const factory ProfileDataChangeState.initial() = _InitialProfileDataChangeState;

  const factory ProfileDataChangeState.nameChanging() = _NameChangingProfileDataChangeState;

  const factory ProfileDataChangeState.sexChanging() = SexChangingProfileDataChangeState;

  const factory ProfileDataChangeState.updatingPassword() = UpdatingPasswordProfileDataChangeState;

  const factory ProfileDataChangeState.updatingEmail() = UpdatingupdatingEmailProfileDataChangeState;

  const factory ProfileDataChangeState.success({
    required final String successMessage,
  }) = SuccessProfileDataChangeState;

  const factory ProfileDataChangeState.error({
    @Default('Произошла ошибка') String message,
  }) = ErrorProfileDataChangeState;
}

typedef Emit = Emitter<ProfileDataChangeState>;

class ProfileDataChangeBloc extends Bloc<ProfileDataChangeEvent, ProfileDataChangeState> {
  ProfileDataChangeBloc({
    required IProfileChangeDataRepo repository,
  })  : _repository = repository,
        super(const ProfileDataChangeState.initial()) {
    on<ProfileDataChangeEvent>(
      (event, emit) => event.map(
        updateEmail: (event) => _updateEmail(event, emit),
        changeName: (event) => _changeName(event, emit),
        changeSex: (event) => _changeSex(event, emit),
        updatePassword: (event) => _updatePassword(event, emit),
      ),
      transformer: bloc_concurrency.concurrent(),
    );
  }

  final IProfileChangeDataRepo _repository;

  Future<void> _updatePassword(_UpdatePsswordProfileDataChangeEvent event, Emit emit) async {
    try {
      emit(event.updatingPassword());

      await _repository.updatePassword(password: event.password);

      emit(event.success(message: 'Пароль обновлен'));
      emit(event.initial());
    } on DioException {
      emit(event.error(message: 'Не удалось изменить пароль, попробуйте снова'));
    } on Object {
      emit(event.error(message: 'Что-то пошло не так'));
      rethrow;
    }
  }

  Future<void> _updateEmail(_UpdateEmailProfileDataChangeEvent event, Emit emit) async {
    try {
      emit(event.updatingEmail());

      await _repository.updateEmail(email: event.email);

      emit(event.success(message: 'Почта изменена'));
      emit(event.initial());
    } on DioException {
      emit(event.error(message: 'Не удалось изменить почту, попробуйте снова'));
    } on Object {
      emit(event.error(message: 'Что-то пошло не так'));
      rethrow;
    }
  }

  Future<void> _changeName(_ChangeNameProfileDataChangeEvent event, Emit emit) async {
    try {
      emit(event.nameChanging());

      await _repository.changeName(name: event.name);

      emit(event.success(message: 'Имя пользователя изменено'));
      emit(event.initial());
    } on DioException {
      emit(event.error(message: 'Не удалось изменить имя пользователя, попробуйте снова'));
    } on Object {
      emit(event.error(message: 'Что-то пошло не так'));
      rethrow;
    }
  }

  Future<void> _changeSex(_ChangeSexProfileDataChangeEvent event, Emit emit) async {
    try {
      emit(event.sexChanging());

      await _repository.changeSex(sex: event.sex);

      emit(event.success(message: 'Пол обновлен изменено'));
      emit(event.initial());
    } on DioException {
      emit(event.error(message: 'Не удалось изменить пол, попробуйте снова'));
    } on Object {
      emit(event.error(message: 'Что-то пошло не так'));
      rethrow;
    }
  }
}

//containers

//mixins
mixin _UpdatingPasswordEmitter on ProfileDataChangeEvent {
  ProfileDataChangeState updatingPassword() => const ProfileDataChangeState.updatingPassword();
}

mixin _InitialEmitter on ProfileDataChangeEvent {
  ProfileDataChangeState initial() => const ProfileDataChangeState.initial();
}

mixin _SuccessEmitter on ProfileDataChangeEvent {
  ProfileDataChangeState success({required String message}) {
    return ProfileDataChangeState.success(successMessage: message);
  }
}

mixin _ErrorEmitter on ProfileDataChangeEvent {
  ProfileDataChangeState error({required String message}) {
    return ProfileDataChangeState.error(message: message);
  }
}

mixin _UpdatingEmailEmitter on ProfileDataChangeEvent {
  ProfileDataChangeState updatingEmail() => const ProfileDataChangeState.updatingEmail();
}

mixin _NameChangingEmitter on ProfileDataChangeEvent {
  ProfileDataChangeState nameChanging() => const ProfileDataChangeState.nameChanging();
}

mixin _SexChangingEmitter on ProfileDataChangeEvent {
  ProfileDataChangeState sexChanging() => const ProfileDataChangeState.sexChanging();
}
