import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

enum ButtonType {
  primary,
  negative,
  positive,
}

enum ButtonState {
  idl,
  inactive,
  loading,
}

class UiKitButton extends StatefulWidget {
  const UiKitButton({
    super.key,
    this.isSmall = false,
    required this.onTap,
    required this.title,
    this.state = ButtonState.idl,
    this.type = ButtonType.primary,
  });

  final bool isSmall;
  final String title;
  final ButtonType type;
  final ButtonState state;
  final void Function()? onTap;

  bool get isDisabled => onTap == null || state == ButtonState.loading;
  bool get isInactive => state == ButtonState.inactive;

  @override
  State<UiKitButton> createState() => _UiKitButtonState();
}

class _UiKitButtonState extends State<UiKitButton> {
  bool _isPressed = false;

  Color _getColorVivid({
    required BuildContext context,
    required ButtonType type,
  }) {
    return switch (type) {
      ButtonType.primary => context.theme.palette.accent.primary.vivid,
      ButtonType.negative => context.theme.palette.status.negative.vivid,
      ButtonType.positive => context.theme.palette.status.positive.vivid,
    };
  }

  Color _getColorMuted({
    required BuildContext context,
    required ButtonType type,
  }) {
    return switch (type) {
      ButtonType.primary => context.theme.palette.accent.primary.muted,
      ButtonType.negative => context.theme.palette.status.negative.muted,
      ButtonType.positive => context.theme.palette.status.positive.muted,
    };
  }

  Color? _setContentColor({required BuildContext context}) {
    Color? inactiveColor = widget.isInactive ? context.theme.palette.grayscale.g5 : null;

    return widget.isInactive
        ? inactiveColor
        : widget.isDisabled
            ? _getColorVivid(
                context: context,
                type: widget.type,
              )
            : context.theme.palette.grayscale.g6;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = !widget.isDisabled
        ? _getColorVivid(
            context: context,
            type: widget.type,
          )
        : _getColorMuted(
            context: context,
            type: widget.type,
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
          color: widget.isInactive
              ? context.theme.palette.grayscale.g1
              : _isPressed
                  ? _getColorMuted(context: context, type: widget.type)
                  : backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: widget.isSmall == true ? 8 : 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.isInactive)
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
