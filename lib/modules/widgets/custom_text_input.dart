import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wildtodo/core/core_utils.dart';

class CustomTextInput extends StatelessWidget {
  final int maxLines;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final EdgeInsetsGeometry contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final void Function(PointerDownEvent)? onTapOutside;

  const CustomTextInput({
    super.key,
    this.onTap,
    this.onSaved,
    this.hintText,
    this.focusNode,
    this.labelText,
    this.onChanged,
    this.controller,
    this.onTapOutside,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.onEditingComplete,
    this.maxLines = 1,
    this.obscureText = false,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      cursorColor: context.theme.palette.grayscale.g6,
      style: context.theme.typeface.body1,
      obscureText: obscureText,
      controller: controller,
      maxLines: maxLines,
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSaved: onSaved,
      onFieldSubmitted: onFieldSubmitted,
      onTapOutside: onTapOutside,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        filled: true,
        fillColor: context.theme.palette.grayscale.g4,
        hintText: hintText,
        hintStyle: context.theme.typeface.body1,
        contentPadding: contentPadding,
        labelText: labelText,
        labelStyle: context.theme.typeface.body1,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
