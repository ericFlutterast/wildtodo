import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wildtodo/common/assets/assets.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/widgets/custom_text_input.dart';
import 'package:wildtodo/modules/widgets/signboard.dart';
import 'package:wildtodo/modules/widgets/uikit_button.dart';
import 'package:wildtodo/modules/widgets/wild_appbar.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool _isShowLoading = false;

  final _emailFormControl = FormControl<String>(validators: [
    Validators.required,
    Validators.email,
  ]);

  final _passwordFormControl = FormControl<String>(validators: [
    Validators.required,
  ]);

  late final _form = FormGroup({
    'email': _emailFormControl,
    'password': _passwordFormControl,
  });

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
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            reverse: true,
            //keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: ReactiveForm(
              formGroup: _form,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.08),
                    child: Signboard(logo: SvgPicture.asset(Assets.navbarFriends)),
                  ),
                  CustomTextInput(
                    hintText: 'Логин',
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
                    },
                  ),
                  const SizedBox(height: 26),
                  // const CustomTextInput(),
                  ReactiveFormConsumer(
                    builder: (context, form, child) {
                      return UiKitButton.primary(
                        title: 'Войти',
                        isSmall: true,
                        isLoading: _isShowLoading ? context.read<AuthenticationBloc>().state.isProgress : false,
                        onTap: form.valid && !_isShowLoading
                            ? () {
                                setState(() => _isShowLoading = true);

                                _passwordFormControl.unfocus();
                                _emailFormControl.unfocus();

                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.login(
                                        email: _emailFormControl.value!,
                                        password: _passwordFormControl.value!,
                                      ),
                                    );
                              }
                            : null,
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      context.pushNamed('registration');
                    },
                    child: Text(
                      'Зарегестрироваться',
                      style: TextStyle(
                        color: context.theme.palette.accent.primary.vivid,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
