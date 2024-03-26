import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:wildtodo/core/core_utils.dart';

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    super.key,
    this.onTap,
    this.hintText,
    this.focusNode,
    this.labelText,
    this.onChanged,
    this.controller,
    this.onTapOutside,
    this.inputFormatters,
    this.onEditingComplete,
    this.formControl,
    this.maxLines = 1,
    this.obscureText = false,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
  });

  final int maxLines;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final FocusNode? focusNode;
  final FormControl<Object?>? formControl;
  final TextEditingController? controller;
  final EdgeInsetsGeometry contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(FormControl<Object?>)? onTap;
  final void Function(FormControl<Object?>)? onChanged;
  final void Function(FormControl<Object?>)? onEditingComplete;
  final void Function(PointerDownEvent)? onTapOutside;

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      formControl: formControl,
      focusNode: focusNode,
      cursorColor: context.theme.palette.grayscale.g6,
      style: context.theme.typeface.body1,
      obscureText: obscureText,
      controller: controller,
      maxLines: maxLines,
      onTap: onTap,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
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
