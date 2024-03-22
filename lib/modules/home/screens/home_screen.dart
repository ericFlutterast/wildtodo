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

class HomeNavigationButtonData {
  const HomeNavigationButtonData({
    required this.icon,
    required this.title,
  });

  final String title;
  final IconData icon;
}

class Wildtodo extends StatelessWidget {
  const Wildtodo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: HomeNavigationScreen(
        screens: [
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Text(
                      "Page 1",
                      style: context.theme.typeface.headline,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      text1,
                      style: context.theme.typeface.body2,
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Text(
                    "Page 2",
                    style: context.theme.typeface.headline,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    text1,
                    style: context.theme.typeface.body2,
                  ),
                ]),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Text(
                    "Page 3",
                    style: context.theme.typeface.headline,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    text1,
                    style: context.theme.typeface.body2,
                    textAlign: TextAlign.start,
                  ),
                ]),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  Text(
                    "Page 4",
                    style: context.theme.typeface.headline,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    text1,
                    style: context.theme.typeface.body2,
                  ),
                ]),
              ),
            ],
          ),
        ],
        navigation: const [
          HomeNavigationButtonData(
            title: "Tasks",
            icon: Icons.message,
          ),
          HomeNavigationButtonData(
            title: "Messsages",
            icon: Icons.message,
          ),
          HomeNavigationButtonData(
            title: "Friends",
            icon: Icons.message,
          ),
          HomeNavigationButtonData(
            title: "Notifications",
            icon: Icons.message,
          ),
        ],
      ),
    );
  }
}

const text1 = '''Title
Nisi consequat ut ut adipisicing laborum esse sit. 
Culpa amet exercitation amet non magna ipsum ut ullamco deserunt culpa eiusmod et. Commodo pariatur ut sint reprehenderit mollit sunt minim.
  
Eu culpa anim ad eu veniam. Consectetur exercitation est laboris anim fugiat eu pariatur proident proident ea in elit esse magna. Minim nisi quis ad ea reprehenderit amet ut nulla. Consectetur eiusmod minim sint excepteur non adipisicing.
Exercitation reprehenderit commodo deserunt excepteur non reprehenderit dolor amet cupidatat ut ut. Consequat aliqua quis cupidatat veniam tempor reprehenderit laborum irure amet laborum. Sunt cillum aute velit enim. Anim ut aliquip ullamco irure proident enim mollit non sunt quis ex magna.

Officia officia sit ullamco duis. Ex magna velit sunt magna minim pariatur. Magna incididunt velit fugiat incididunt ipsum amet esse consequat et enim ex.
Dolore aliquip aute nostrud elit deserunt do consequat ea aliqua. Aliquip velit magna cupidatat sunt laboris irure exercitation in incididunt culpa. Incididunt in proident est exercitation aute commodo exercitation irure ad. Enim exercitation enim Lorem consequat labore. Commodo voluptate laborum exercitation ut cupidatat aliquip. Officia anim voluptate eu enim culpa reprehenderit.

Nisi consequat ut ut adipisicing laborum esse sit. 
Culpa amet exercitation amet non magna ipsum ut ullamco deserunt culpa eiusmod et. Commodo pariatur ut sint reprehenderit mollit sunt minim.
  
Eu culpa anim ad eu veniam. Consectetur exercitation est laboris anim fugiat eu pariatur proident proident ea in elit esse magna. Minim nisi quis ad ea reprehenderit amet ut nulla. Consectetur eiusmod minim sint excepteur non adipisicing.
Exercitation reprehenderit commodo deserunt excepteur non reprehenderit dolor amet cupidatat ut ut. Consequat aliqua quis cupidatat veniam tempor reprehenderit laborum irure amet laborum. Sunt cillum aute velit enim. Anim ut aliquip ullamco irure proident enim mollit non sunt quis ex magna.

Officia officia sit ullamco duis. Ex magna velit sunt magna minim pariatur. Magna incididunt velit fugiat incididunt ipsum amet esse consequat et enim ex.
Dolore aliquip aute nostrud elit deserunt do consequat ea aliqua. Aliquip velit magna cupidatat sunt laboris irure exercitation in incididunt culpa. Incididunt in proident est exercitation aute commodo exercitation irure ad. Enim exercitation enim Lorem consequat labore. Commodo voluptate laborum exercitation ut cupidatat aliquip. Officia anim voluptate eu enim culpa reprehenderit.
''';

class HomeNavigationScreen extends StatefulWidget {
  const HomeNavigationScreen({
    super.key,
    required this.screens,
    required this.navigation,
  }) : assert(screens.length == navigation.length);

  final List<Widget> screens;
  final List<HomeNavigationButtonData> navigation;

  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  late PageController _controller;
  int _currentPage = _startPage;

  static const _startPage = 0;

  @override
  void initState() {
    super.initState();

    _controller = PageController(
      initialPage: _startPage,
    );
  }

  Future<void> _changePage(int page) async {
    _onPageChanged(page);
    await _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 600),
      curve: Curves.bounceIn,
    );
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
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
              controller: _controller,
              onPageChanged: _onPageChanged,
              children: widget.screens,
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(color: context.theme.palette.grayscale.g2, boxShadow: const [
              BoxShadow(
                offset: Offset(0, -5),
                spreadRadius: 5,
                blurRadius: 5,
                color: Colors.black,
              ),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int page = 0; page < widget.navigation.length; page++)
                  IconButton(
                    onPressed: () => _changePage(page),
                    icon: Icon(
                      widget.navigation[page].icon,
                      color: _currentPage == page
                          ? context.theme.palette.grayscale.g6
                          : context.theme.palette.grayscale.g5,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
