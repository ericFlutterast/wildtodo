import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/widgets/custom_text_input.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.palette.grayscale.g1,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const CustomTextInput(),
              const CustomTextInput(),
              ElevatedButton(onPressed: () {}, child: const Text('Войти')),
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
