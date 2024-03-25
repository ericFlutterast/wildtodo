import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/widgets/custom_text_input.dart';
import 'package:wildtodo/modules/widgets/uikit_button.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.palette.grayscale.g1,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomTextInput(),
              const SizedBox(height: 26),
              // const CustomTextInput(),
              UiKitButton.primary(
                title: 'Войти',
                isSmall: true,
                onTap: () {},
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () {},
                child: const Text('Зарегестрироваться'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
