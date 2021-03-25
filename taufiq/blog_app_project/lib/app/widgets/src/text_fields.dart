import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    required this.enabled,
    required this.controller,
    required this.hint,
    this.error,
    this.validator,
    this.textInputType = TextInputType.text,
    this.textCapitalization = TextCapitalization.none,
    this.obscureText = false,
  });

  final bool enabled;
  final bool obscureText;
  final String hint;
  final String? error;
  final TextInputType textInputType;
  final TextCapitalization textCapitalization;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  /// provides decoration for input fields
  InputDecoration kInputDecoration(
          ColorScheme kColorScheme, InputBorder border) =>
      InputDecoration(
        border: OutlineInputBorder(),
        enabled: enabled,
        hintText: hint,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: border,
        enabledBorder: border,
      );

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    var kColorScheme = kTheme.colorScheme;

    var inputBorder = OutlineInputBorder(
        borderSide: BorderSide(color: kColorScheme.secondary));

    return Container(
      padding: EdgeInsets.only(bottom: kSpacingX12),
      child: TextFormField(
        validator: validator ?? (_) => null,
        controller: controller,
        autovalidateMode: AutovalidateMode.disabled,
        obscureText: obscureText,
        decoration: kInputDecoration(kColorScheme, inputBorder),
        keyboardType: textInputType,
        textCapitalization: textCapitalization,
      ),
    );
  }
}
