import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                const CustomTextInput(hintText: 'Почта'),
                const SizedBox(height: 16),
                const CustomTextInput(hintText: 'Пароль'),
                const SizedBox(height: 16),
                const CustomTextInput(hintText: 'Повторить пароль'),
                const SizedBox(height: 26),
                UiKitButton.primary(
                  title: 'Зарегистрироваться',
                  isSmall: true,
                  onTap: () {
                    //TODO:
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
