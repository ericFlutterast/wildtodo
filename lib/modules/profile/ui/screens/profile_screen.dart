import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/authentication/bloc/authentication.dart';
import 'package:wildtodo/modules/authentication/models/user.dart';
import 'package:wildtodo/modules/widgets/shimmer_loading.dart';
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
          child: RefreshIndicator(
            color: context.theme.palette.accent.secondary.vivid,
            backgroundColor: context.theme.palette.grayscale.g4,
            onRefresh: () async {
              context.read<AuthenticationBloc>().add(const AuthenticationEvent.init());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 16),
                  ),
                  SliverList.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        color: context.theme.palette.grayscale.g5,
                        height: 100,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(height: 10),
                  )
                ],
              ),
            ),
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
          inProgress: (state) {
            return Column(
              children: [
                ShimmerLoading(
                  child: Container(
                    child: null,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: context.theme.palette.grayscale.g5,
                      borderRadius: const BorderRadius.all(Radius.circular(100)),
                    ),
                  ),
                ),
                const SizedBox(height: 23),
                ShimmerLoading(
                  child: Container(
                    height: 25,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: context.theme.palette.grayscale.g5,
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                ShimmerLoading(
                  child: Container(
                    height: 23,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: context.theme.palette.grayscale.g5,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
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
