import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';
import 'package:wildtodo/modules/initializer/di/dependencies_scope.dart';
import 'package:wildtodo/modules/profile/bloc/profile_data_change.dart';
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
    return BlocProvider(
      create: (context) => ProfileDataChangeBloc(
        repository: DependenciesScope.of(context).profileDataChangeRepository,
      ),
      child: ProfileSettingsScreen(user: user),
    );
  }
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  late final FormControl<String> _nameFormController;
  late final FormControl<String> _emailFormController;
  late final FormGroup _formGroup;

  @override
  void initState() {
    super.initState();

    _nameFormController = FormControl<String>(value: widget.user.fistName);
    _emailFormController = FormControl<String>(value: widget.user.email);

    _formGroup = FormGroup(<String, FormControl>{
      'name': _nameFormController,
      'email': _emailFormController,
    });
  }

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ReactiveForm(
            formGroup: _formGroup,
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
    );
  }
}
