import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';
import 'package:wildtodo/modules/widgets/custom_text_input.dart';
import 'package:wildtodo/modules/widgets/wild_appbar.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({
    super.key,
    required this.user,
  });

  final AuthenticatedUser user;

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();

  static Widget getPage({required AuthenticatedUser user}) {
    return ProfileSettingsScreen(user: user);
  }
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.palette.grayscale.g1,
      appBar: WildAppBar(
        action: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('Готово'),
          ),
        ],
      ),
      body: SafeArea(
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
            CustomTextInput(
              hintText: 'EEEEE',
              formControl: FormControl(),
            ),
            CustomTextInput(
              hintText: 'пукакака',
              formControl: FormControl(),
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
    );
  }
}
