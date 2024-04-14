import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';
import 'package:wildtodo/modules/initializer/di/dependencies_scope.dart';
import 'package:wildtodo/modules/profile/bloc/profile_data_change.dart';
import 'package:wildtodo/modules/widgets/custom_text_input.dart';
import 'package:wildtodo/modules/widgets/wild_appbar.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();

  static Widget getPage(BuildContext context) {
    return BlocProvider(
      create: (_) => ProfileDataChangeBloc(
        repository: DependenciesScope.of(context).profileDataChangeRepository,
      ),
      child: const ProfileSettingsScreen(),
    );
  }
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  late final AuthenticatedUser _user;
  late final FormControl<String> _nameFormController;
  late final FormControl<String> _emailFormController;
  late final FormGroup _formGroup;

  @override
  void initState() {
    super.initState();

    _user = context.read<AuthenticationBloc>().state.user as AuthenticatedUser;

    _nameFormController = FormControl<String>(
      value: _user.fistName,
      validators: [
        Validators.minLength(2),
        _OldValueValidator(_user.fistName),
      ],
    );
    _emailFormController = FormControl<String>(
      value: _user.email,
      validators: [
        Validators.email,
        _OldValueValidator(_user.email),
      ],
    );

    _formGroup = FormGroup(<String, FormControl>{
      'name': _nameFormController,
      'email': _emailFormController,
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveForm(
      formGroup: _formGroup,
      child: BlocListener<ProfileDataChangeBloc, ProfileDataChangeState>(
        listener: (context, state) {
          state.mapOrNull(
            success: (state) {
              _formGroup.unfocus();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.successMessage)));
            },
            error: (state) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message)));
            },
          );
        },
        child: Scaffold(
          backgroundColor: context.theme.palette.grayscale.g1,
          appBar: WildAppBar(
            action: [
              ReactiveFormConsumer(
                builder: (BuildContext context, FormGroup formGroup, Widget? child) {
                  return TextButton(
                    onPressed: () {
                      if (_nameFormController.valid) {
                        context.read<ProfileDataChangeBloc>().add(
                              ProfileDataChangeEvent.changeName(
                                name: _nameFormController.value!,
                              ),
                            );
                      }

                      if (_emailFormController.valid) {
                        context.read<ProfileDataChangeBloc>().add(
                              ProfileDataChangeEvent.updateEmail(
                                email: _emailFormController.value!,
                              ),
                            );
                      }
                    },
                    child: const Text('Готово'),
                  );
                },
              ),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Hero(
                    tag: 'profile_avatar',
                    child: CircleAvatar(
                      child: null,
                      radius: 50,
                      backgroundColor: context.theme.palette.grayscale.g5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      color: context.theme.palette.grayscale.g4,
                    ),
                    child: Column(
                      children: [
                        CustomTextInput(
                          formControl: _nameFormController,
                          validationMessage: {
                            'milLength': (_) => '',
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Divider(
                            height: 1,
                            color: context.theme.palette.grayscale.g5,
                          ),
                        ),
                        CustomTextInput(
                          formControl: _emailFormController,
                          validationMessage: {
                            'email': (error) => '',
                          },
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      context.read<AuthenticationBloc>().add(const AuthenticationEvent.logout());
                    },
                    child: const Text('Выйти нахуй'),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final class _OldValueValidator extends Validator {
  _OldValueValidator(this.oldValue);

  final String oldValue;

  @override
  Map<String, dynamic>? validate(AbstractControl control) {
    final flag = control.isNotNull && control.value != oldValue;

    return flag ? null : {'newValueValidator': true};
  }
}
