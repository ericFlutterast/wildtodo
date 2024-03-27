import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

enum _ButtonType {
  primary,
  negative,
  positive,
}

class UiKitButton extends StatefulWidget {
  final bool isLoading;
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
          isLoading: isLoading ?? false,
        );

  const UiKitButton.negative({
    required String title,
    bool? isSmall,
    bool? inactive,
    bool isLoading = false,
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
    bool isLoading = false,
    void Function()? onTap,
  }) : this._(
          _ButtonType.positive,
          onTap: onTap,
          title: title,
          isSmall: isSmall,
          inactive: inactive,
          isLoading: isLoading,
        );

  bool get isDisabled => onTap == null || isLoading;

  @override
  State<UiKitButton> createState() => _UiKitButtonState();
}

class _UiKitButtonState extends State<UiKitButton> {
  bool _isPressed = false;

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
    Color? inactiveColor = widget.inactive == true ? context.theme.palette.grayscale.g5 : null;

    return widget.inactive == true
        ? inactiveColor
        : widget.isDisabled
            ? _setColorVivid(
                context: context,
                type: widget._type,
              )
            : context.theme.palette.grayscale.g6;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = !widget.isDisabled
        ? _setColorVivid(
            context: context,
            type: widget._type,
          )
        : _setColorMuted(
            context: context,
            type: widget._type,
          );

    Size circularIndicatorSize = Size.fromRadius(widget.isSmall == true ? 6 : 10);

    final contentColor = _isPressed ? context.theme.palette.grayscale.g5 : _setContentColor(context: context);

    return GestureDetector(
      onTapDown: widget.isDisabled
          ? null
          : (_) {
              setState(() => _isPressed = true);
            },
      onTap: widget.isDisabled
          ? null
          : () {
              widget.onTap?.call();
              setState(() {});
            },
      onTapUp: widget.isDisabled
          ? null
          : (_) {
              setState(() => _isPressed = false);
            },
      child: Container(
        decoration: BoxDecoration(
          color: widget.inactive == true
              ? context.theme.palette.grayscale.g1
              : _isPressed
                  ? _setColorMuted(context: context, type: widget._type)
                  : backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: widget.isSmall == true ? 8 : 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.isLoading == true)
                SizedBox.fromSize(
                  size: circularIndicatorSize,
                  child: CircularProgressIndicator(
                    color: contentColor,
                    strokeWidth: 2,
                  ),
                ),
              const SizedBox(width: 6),
              Text(
                widget.title,
                style: context.theme.typeface.subheading.copyWith(
                  fontSize: widget.isSmall == true ? 16 : 20,
                  color: contentColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
