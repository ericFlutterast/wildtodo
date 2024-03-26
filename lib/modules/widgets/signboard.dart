import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

class Signboard extends StatelessWidget {
  const Signboard({
    super.key,
    this.titleText,
    this.subtitleText,
    required this.logo,
  });

  final Widget logo;
  final String? titleText;
  final String? subtitleText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: logo,
        ),
        if (titleText != null) ...[
          Text(
            titleText!,
            textAlign: TextAlign.center,
            style: context.theme.typeface.subheading,
          ),
          const SizedBox(height: 8),
        ],
        if (subtitleText != null)
          Text(
            subtitleText!,
            textAlign: TextAlign.center,
            style: context.theme.typeface.body2,
          ),
      ],
    );
  }
}
