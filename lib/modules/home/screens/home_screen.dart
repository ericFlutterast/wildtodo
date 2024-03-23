import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/widgets/wild_appbar.dart';

enum HomeBottomTabs {
  tasks(0),
  messages(1),
  friends(2),
  notifications(3);

  const HomeBottomTabs(this.number);

  final int number;
}

class HomeNavigationScreen extends StatefulWidget {
  const HomeNavigationScreen({
    super.key,
  });

  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  static const _startPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.palette.grayscale.g1,
      drawer: const Drawer(),
      appBar: const WildAppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
