import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

enum _ButtonType {
  primary,
  negative,
  positive,
}

class UiKitButton extends StatelessWidget {
  final bool? isLoading;
  final bool? isSmall;
  final bool? inactive;
  final _ButtonType _type;
  final String title;
  final void Function()? onTap;

  const UiKitButton._(
    this._type, {
    this.isSmall = false,
    this.isLoading = false,
    this.inactive = false,
    required this.onTap,
    required this.title,
  });

  const UiKitButton.primary({
    required String title,
    bool? isSmall,
    bool? inactive,
    bool? isLoading,
    void Function()? onTap,
  }) : this._(
          _ButtonType.primary,
          onTap: onTap,
          title: title,
          isSmall: isSmall,
          inactive: inactive,
          isLoading: isLoading,
        );

  const UiKitButton.negative({
    required String title,
    bool? isSmall,
    bool? inactive,
    bool? isLoading,
    void Function()? onTap,
  }) : this._(
          _ButtonType.negative,
          onTap: onTap,
          title: title,
          isSmall: isSmall,
          inactive: inactive,
          isLoading: isLoading,
        );

  const UiKitButton.positive({
    required String title,
    bool? isSmall,
    bool? inactive,
    bool? isLoading,
    void Function()? onTap,
  }) : this._(
          _ButtonType.positive,
          onTap: onTap,
          title: title,
          isSmall: isSmall,
          inactive: inactive,
          isLoading: isLoading,
        );

  bool get isDisabled => onTap == null;

  Color _setColorVivid({
    required BuildContext context,
    required _ButtonType type,
  }) {
    return switch (type) {
      _ButtonType.primary => context.theme.palette.accent.primary.vivid,
      _ButtonType.negative => context.theme.palette.status.negative.vivid,
      _ButtonType.positive => context.theme.palette.status.positive.vivid,
    };
  }

  Color _setColorMuted({
    required BuildContext context,
    required _ButtonType type,
  }) {
    return switch (type) {
      _ButtonType.primary => context.theme.palette.accent.primary.muted,
      _ButtonType.negative => context.theme.palette.status.negative.muted,
      _ButtonType.positive => context.theme.palette.status.positive.muted,
    };
  }

  Color? _setContentColor({required BuildContext context}) {
    Color? inactiveColor = inactive == true ? context.theme.palette.grayscale.g5 : null;

    return inactive == true
        ? inactiveColor
        : isDisabled
            ? _setColorVivid(
                context: context,
                type: _type,
              )
            : context.theme.palette.grayscale.g6;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = !isDisabled
        ? _setColorVivid(
            context: context,
            type: _type,
          )
        : _setColorMuted(
            context: context,
            type: _type,
          );

    Size circularIndicatorSize = Size.fromRadius(isSmall == true ? 6 : 10);

    return GestureDetector(
      onTapDown: (_) {
        print('start');
      },
      onTap: isDisabled ? null : onTap,
      onTapUp: (_) {
        print('end');
      },
      child: Container(
        decoration: BoxDecoration(
          color: inactive == true ? context.theme.palette.grayscale.g1 : backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: isSmall == true ? 8 : 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isLoading == true)
                SizedBox.fromSize(
                  size: circularIndicatorSize,
                  child: CircularProgressIndicator(
                    color: _setContentColor(context: context),
                    strokeWidth: 2,
                  ),
                ),
              const SizedBox(width: 6),
              Text(
                title,
                style: context.theme.typeface.subheading.copyWith(
                  fontSize: isSmall == true ? 16 : 20,
                  color: _setContentColor(context: context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
