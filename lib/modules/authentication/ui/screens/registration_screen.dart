import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wildtodo/core/core_utils.dart';
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
                    validationMessage: {
                      'required': (_) => 'Обязательное поле',
                      'email': (_) => 'Не корректный формат',
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextInput(
                    hintText: 'Пароль',
                    obscureText: true,
                    formControl: _passwordFormControl,
                    validationMessage: {
                      'required': (_) => 'Обязательное поле',
                      'minLength': (_) => 'Минимальная длина 8 символов'
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
                    return UiKitButton.primary(
                      title: 'Зарегистрироваться',
                      isSmall: true,
                      onTap: form.valid
                          ? () {
                              //TODO:
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
    );
  }
}
