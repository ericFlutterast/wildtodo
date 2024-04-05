import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';
import 'package:wildtodo/modules/widgets/wild_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.mapOrNull(
          unAuthenticated: (_) => context.pop(),
        );
      },
      child: Scaffold(
        backgroundColor: context.theme.palette.grayscale.g1,
        appBar: WildAppBar(
          action: [
            TextButton(
              onPressed: () => context.pushNamed('profile_settings'),
              child: const Text('Изм.'),
            ),
          ],
        ),
        body: SafeArea(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const ProfileHeader(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return state.maybeMap<Widget>(
          authenticated: (state) {
            final user = state.user as AuthenticatedUser;

            return Column(
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
                const SizedBox(height: 25),
                Center(
                  child: Text(
                    user.fistName,
                    style: context.theme.typeface.body2,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    user.email,
                    style: context.theme.typeface.body2,
                  ),
                ),
              ],
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
