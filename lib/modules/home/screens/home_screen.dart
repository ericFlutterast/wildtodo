import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:wildtodo/common/assets/assets.dart';
import 'package:wildtodo/core/core_utils.dart';
import 'package:wildtodo/modules/widgets/progress_circular_widget.dart';
import 'package:wildtodo/modules/widgets/wild_appbar.dart';

class HomeNavigationScreen extends StatefulWidget {
  final Widget child;

  const HomeNavigationScreen({
    required this.child,
    super.key,
  });

  @override
  State<HomeNavigationScreen> createState() => _HomeNavigationScreenState();
}

class _HomeNavigationScreenState extends State<HomeNavigationScreen> {
  int _startPage = 0;

  static const List<String> _routes = ['tasks', 'messages', 'friends', 'notification'];
  static const List<String> _iconsPath = [
    Assets.navbarTasks,
    Assets.navbarChat,
    Assets.navbarFriends,
    Assets.navbarNotification,
  ];

  @override
  void initState() {
    super.initState();
  }

  void _changePage({required int index}) {
    GoRouter.of(context).go('/${_routes[index]}');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      maintainBottomViewPadding: true,
      child: Scaffold(
        backgroundColor: context.theme.palette.grayscale.g1,
        drawer: const Drawer(),
        appBar: WildAppBar(
          title: Text(
            'March 2023',
            style: context.theme.typeface.subheading.bold,
          ),
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: Scaffold.of(context).openDrawer,
            ),
          ),
          action: [
            Icon(
              CupertinoIcons.bell_fill,
              color: context.theme.palette.grayscale.g5,
              size: 16,
            ),
            GestureDetector(
              onTap: () => context.pushNamed('/authentication'),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(16, 7, 24, 7),
                child: SizedBox(
                  width: 42,
                  child: ProgressCircularWidget(
                    percent: 0.70,
                  ),
                ),
              ),
            )
          ],
        ),
        body: widget.child,
        bottomNavigationBar: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(color: context.theme.palette.grayscale.g0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              _routes.length,
              (index) {
                return _BottomNavigationButton(
                  isSelected: index == _startPage,
                  iconPath: _iconsPath[index],
                  title: _routes[index],
                  onTap: () {
                    setState(() => _startPage = index);
                    _changePage(index: index);
                  },
                );
              },
            )..insert(
                _routes.length ~/ 2,
                FloatingActionButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  backgroundColor: context.theme.palette.accent.primary.vivid,
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: context.theme.palette.grayscale.g6,
                  ),
                ),
              ),
          ),
        ),
      ),
    );
  }
}

class _BottomNavigationButton extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String iconPath;
  final VoidCallback? onTap;

  const _BottomNavigationButton({
    this.onTap,
    required this.iconPath,
    required this.title,
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ColorFilter? colorFilter = isSelected
        ? ColorFilter.mode(
            context.theme.palette.grayscale.g6,
            BlendMode.srcIn,
          )
        : null;

    final TextStyle textStyle = context.theme.typeface.body1.copyWith(
      color: isSelected ? context.theme.palette.grayscale.g6 : context.theme.palette.grayscale.g5,
      overflow: TextOverflow.ellipsis,
    );

    final BoxDecoration? decoration = isSelected
        ? BoxDecoration(
            color: context.theme.palette.grayscale.g4,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
          )
        : null;

    return Container(
      decoration: decoration,
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      width: MediaQuery.of(context).size.width / 5.5,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              iconPath,
              colorFilter: colorFilter,
            ),
            Text(
              title,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
