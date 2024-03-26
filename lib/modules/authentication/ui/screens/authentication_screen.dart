import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wildtodo/common/assets/assets.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/widgets/custom_text_input.dart';
import 'package:wildtodo/modules/widgets/signboard.dart';
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.08),
                child: Signboard(logo: SvgPicture.asset(Assets.navbarFriends)),
              ),
              const CustomTextInput(
                hintText: 'Логин',
              ),
              const SizedBox(height: 16),
              const CustomTextInput(
                hintText: 'Пароль',
                obscureText: true,
              ),
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
                child: Text(
                  'Зарегестрироваться',
                  style: TextStyle(
                    color: context.theme.palette.accent.primary.vivid,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
