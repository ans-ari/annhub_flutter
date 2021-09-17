import 'package:flutter/material.dart';

import '../../core.dart';

extension CustomInputDecoration on InputDecoration {
  static textField(
    ThemeData theme, {
    String? hintText,
    String? errorText,
    bool hasText = false,
  }) {
    final errorBorder = inputBorder(
      color: theme.colorScheme.error,
    );
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedBorder: inputBorder(
        color: theme.colorScheme.secondary,
      ),
      enabledBorder: inputBorder(
        color: hasText ? theme.colorScheme.secondary : CustomColors.hintColor,
      ),
      errorText: errorText,
      errorBorder: errorBorder,
      errorStyle: theme.textTheme.caption?.copyWith(
        color: theme.colorScheme.error,
      ),
      errorMaxLines: 2,
      focusedErrorBorder: errorBorder,
      hintText: hintText,
      hintStyle: theme.textTheme.bodyText1?.copyWith(
        color: CustomColors.hintColor,
      ),
    );
  }

  static InputBorder inputBorder({
    required Color color,
  }) =>
      OutlineInputBorder(
        borderRadius: BorderRadius.all(CustomDimens.radius16),
        borderSide: BorderSide(color: color),
      );
}
