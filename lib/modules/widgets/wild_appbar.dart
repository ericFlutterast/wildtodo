import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wildtodo/common/assets/assets.dart';
import 'package:wildtodo/core/core_utils.dart';

class WildAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WildAppBar({
    super.key,
    this.title,
    this.action,
    this.leading,
    this.leadingCallBack,
  });

  final Widget? title;
  final Widget? leading;
  final List<Widget>? action;
  final void Function()? leadingCallBack;

  @override
  Size get preferredSize => const Size(double.infinity, 60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: context.theme.palette.grayscale.g5),
      backgroundColor: context.theme.palette.grayscale.g1,
      leading: leading ??
          GestureDetector(
            onTap: leadingCallBack,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: SvgPicture.asset(Assets.navigatorBack),
            ),
          ),
      title: title,
      actions: action,
    );
  }
}
