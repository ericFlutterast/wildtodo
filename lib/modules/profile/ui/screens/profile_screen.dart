import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/widgets/wild_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.palette.grayscale.g1,
      appBar: WildAppBar(
        action: [
          IconButton(
            onPressed: () {
              //TODO: logout
            },
            icon: const Icon(Icons.logout),
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
                  CircleAvatar(
                    child: null,
                    radius: 50,
                    backgroundColor: context.theme.palette.grayscale.g5,
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Text(
                      'User name',
                      style: context.theme.typeface.body2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      'User email',
                      style: context.theme.typeface.body2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}