import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/widgets/custom_text_input.dart';
import 'package:wildtodo/modules/widgets/signboard.dart';
import 'package:wildtodo/modules/widgets/uikit_button.dart';
import 'package:wildtodo/modules/widgets/wild_appbar.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _isShowLoading = false;

  final _emailFormControl = FormControl<String>(validators: [
    Validators.required,
    Validators.email,
  ]);

  final _passwordFormControl = FormControl<String>(validators: [
    Validators.required,
    Validators.minLength(8),
  ]);

  final _passwordConfirmFormControl = FormControl<String>();

  late final _form = FormGroup(
    {
      'email': _emailFormControl,
      'password': _passwordFormControl,
      'passwordConfirm': _passwordConfirmFormControl,
    },
    validators: [Validators.mustMatch('password', 'passwordConfirm')],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.palette.grayscale.g1,
      appBar: WildAppBar(
        backgroundColor: context.theme.palette.grayscale.g1,
        leadingCallBack: () async {
          FocusScope.of(context).unfocus();
          await Future.delayed(const Duration(milliseconds: 200)).then((_) => context.pop());
        },
      ),
      body: SafeArea(
        child: BlocListener<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            state.mapOrNull(
              authenticated: (state) {
                context.go('/tasks');
                setState(() => _isShowLoading = false);
              },
              error: (state) {
                setState(() => _isShowLoading = false);

                //TODO: Чтобы дважды не отображался снекбар, выяснить проблему задвоения
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Container(
                      child: Text(state.message),
                    ),
                  ),
                );
              },
            );
          },
          child: SingleChildScrollView(
            reverse: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.topCenter,
              child: ReactiveForm(
                formGroup: _form,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.08),
                      child: Signboard(
                        logo: Icon(
                          Icons.supervised_user_circle_outlined,
                          size: 100,
                          color: context.theme.palette.grayscale.g5,
                        ),
                      ),
                    ),
                    CustomTextInput(
                      hintText: 'Почта',
                      formControl: _emailFormControl,
                    ),
                    const SizedBox(height: 16),
                    CustomTextInput(
                      hintText: 'Пароль',
                      obscureText: true,
                      formControl: _passwordFormControl,
                      validationMessage: {
                        'minLength': (_) => 'Минимальная длина 8 символов',
                      },
                    ),
                    const SizedBox(height: 16),
                    CustomTextInput(
                      hintText: 'Повторить пароль',
                      obscureText: true,
                      formControl: _passwordConfirmFormControl,
                      validationMessage: {
                        'mustMatch': (_) => 'Не соответсвует паролю',
                      },
                    ),
                    const SizedBox(height: 26),
                    ReactiveFormConsumer(builder: (context, form, child) {
                      return UiKitButton(
                        title: 'Зарегистрироваться',
                        isSmall: true,
                        settings: ButtonSettings.small,
                        state: _isShowLoading && context.read<AuthenticationBloc>().state.isProgress
                            ? ButtonState.loading
                            : ButtonState.active,
                        onTap: form.valid && !_isShowLoading
                            ? () {
                                setState(() {
                                  _isShowLoading = true;
                                });

                                _emailFormControl.unfocus();
                                _passwordFormControl.unfocus();
                                _passwordConfirmFormControl.unfocus();

                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.createUser(
                                        email: _emailFormControl.value!,
                                        password: _passwordConfirmFormControl.value!,
                                      ),
                                    );
                              }
                            : null,
                      );
                    }),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
