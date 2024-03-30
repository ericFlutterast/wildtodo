import 'package:flutter/material.dart';
import 'package:wildtodo/core/core_utils.dart';

enum ButtonType {
  primary,
  negative,
  positive,
}

enum ButtonState {
  active,
  inactive,
  loading,
}

class UiKitButton extends StatefulWidget {
  const UiKitButton({
    super.key,
    this.isSmall = false,
    required this.onTap,
    required this.title,
    this.state = ButtonState.active,
    this.type = ButtonType.primary,
  });

  final bool isSmall;
  final String title;
  final ButtonType type;
  final ButtonState state;
  final void Function()? onTap;

  bool get isDisabled => onTap == null || state == ButtonState.loading;
  bool get isInactive => state == ButtonState.inactive;
  bool get isLoading => state == ButtonState.loading;

  @override
  State<UiKitButton> createState() => _UiKitButtonState();
}

class _UiKitButtonState extends State<UiKitButton> {
  bool _isPressed = false;

  Color _getColorVivid() {
    return switch (widget.type) {
      ButtonType.primary => context.theme.palette.accent.primary.vivid,
      ButtonType.negative => context.theme.palette.status.negative.vivid,
      ButtonType.positive => context.theme.palette.status.positive.vivid,
    };
  }

  Color _getColorMuted() {
    return switch (widget.type) {
      ButtonType.primary => context.theme.palette.accent.primary.muted,
      ButtonType.negative => context.theme.palette.status.negative.muted,
      ButtonType.positive => context.theme.palette.status.positive.muted,
    };
  }

  Color _getContentColor() {
    if (widget.isInactive) return context.theme.palette.grayscale.g5;

    if (widget.isDisabled || _isPressed) {
      return _getColorVivid();
    }

    return context.theme.palette.grayscale.g6;
  }

  Color _getBackgroundColor() {
    if (widget.isInactive) return context.theme.palette.grayscale.g1;

    if (widget.isDisabled) {
      return _getColorMuted();
    }

    return _getColorVivid();
  }

  void _onTapDown(TapDownDetails detail) {
    setState(() => _isPressed = true);
  }

  void _onTap() {
    widget.onTap?.call();
    setState(() {});
  }

  void _onTapUp(TapUpDetails details) {
    setState(() => _isPressed = false);
  }

  @override
  Widget build(BuildContext context) {
    Size circularIndicatorSize = Size.fromRadius(widget.isSmall ? 6 : 10);

    return GestureDetector(
      onTapDown: widget.isDisabled ? null : _onTapDown,
      onTap: widget.isDisabled ? null : _onTap,
      onTapUp: widget.isDisabled ? null : _onTapUp,
      child: Container(
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: widget.isSmall ? 8 : 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.isLoading)
                SizedBox.fromSize(
                  size: circularIndicatorSize,
                  child: CircularProgressIndicator(
                    color: _getContentColor(),
                    strokeWidth: 2,
                  ),
                ),
              const SizedBox(width: 6),
              Text(
                widget.title,
                style: context.theme.typeface.subheading.copyWith(
                  fontSize: widget.isSmall ? 16 : 20,
                  color: _getContentColor(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
