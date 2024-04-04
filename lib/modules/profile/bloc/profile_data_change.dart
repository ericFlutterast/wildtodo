import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data_change.freezed.dart';

@freezed
sealed class ProfileDataChangeEvent with _$ProfileDataChangeEvent {
  const ProfileDataChangeEvent._();

  ///Изменить email
  const factory ProfileDataChangeEvent.updateEmail({
    required final String email,
  }) = _UpdateEmailProfileDataChangeEvent;

  ///Изменить пароль
  const factory ProfileDataChangeEvent.updatePassword({
    required final String password,
  }) = _UpdatePsswordProfileDataChangeEvent;

  ///Изменить имя
  const factory ProfileDataChangeEvent.changeName({
    required final String name,
  }) = _ChangeNameProfileDataChangeEvent;

  ///1 - not installed, 2 - men, 3 - woman
  ///Изменить пол
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

  const factory ProfileDataChangeState.success() = SuccessProfileDataChangeState;

  const factory ProfileDataChangeState.error({
    @Default('Произошла ошибка') String? message,
  }) = ErrorProfileDataChangeState;
}

typedef Emit = Emitter<ProfileDataChangeState>;

class ProfileDataChangeBloc extends Bloc<ProfileDataChangeEvent, ProfileDataChangeState> {
  ProfileDataChangeBloc() : super(const ProfileDataChangeState.initial()) {
    on<ProfileDataChangeEvent>(
      (event, emit) => event.map(
        updateEmail: (event) => _updateEmail(event, emit),
        changeName: (event) => _changeName(event, emit),
        changeSex: (event) => _changeSex(event, emit),
        updatePassword: (event) => _updatePassword(event, emit),
      ),
    );
  }

  Future<void> _updatePassword(_UpdatePsswordProfileDataChangeEvent event, Emit emit) async {}

  Future<void> _updateEmail(_UpdateEmailProfileDataChangeEvent event, Emit emit) async {}

  Future<void> _changeName(_ChangeNameProfileDataChangeEvent event, Emit emit) async {}

  Future<void> _changeSex(_ChangeSexProfileDataChangeEvent event, Emit emit) async {}
}
