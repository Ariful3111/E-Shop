import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final EdgeInsets ?contentPadding;
  final Widget? prefixIcon;
  final Widget ?suffixIcon;
  final Color? fillColor;
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.labelText,
    this.validator,
    this.autovalidateMode,
    this.keyboardType,
    this.obscureText, this.contentPadding, this.prefixIcon,  this.suffixIcon, this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autovalidateMode: autovalidateMode,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(minHeight: 0,minWidth: 0),
        prefixIcon: prefixIcon,
        suffix: suffixIcon,
        labelText: labelText,
        contentPadding: contentPadding,
        fillColor: fillColor,
      ),
    );
  }
}
