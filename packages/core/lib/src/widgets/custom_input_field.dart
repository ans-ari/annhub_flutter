import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core.dart';

class CustomInputField {
  static Widget buildTextField(
    BuildContext context, {
    required String name,
    required FocusNode focusNode,
    required String labelText,
    FocusNode? nextFocusNode,
    TextInputType? textInputType,
    String? hintText,
    String? errorText,
    TextStyle? labelStyle,
    void Function()? onTap,
    void Function()? onEditingComplete,
    TextInputAction? textInputAction,
    bool obscureText = false,
    FormFieldValidator<String>? validator,
    TextEditingController? controller,
    bool hasText = false,
  }) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextFieldLabel(
          labelText,
          style: labelStyle ??
              theme.textTheme.caption?.copyWith(
                color: theme.colorScheme.secondary,
              ),
        ),
        FormBuilderTextField(
          focusNode: focusNode,
          keyboardType: textInputType,
          controller: controller,
          name: name,
          obscureText: obscureText,
          cursorColor: theme.colorScheme.secondary,
          decoration: CustomInputDecoration.textField(
            theme,
            hintText: hintText,
            errorText: errorText,
            hasText: hasText,
          ),
          validator: validator,
          textInputAction: textInputAction,
          obscuringCharacter: '*',
          onTap: onTap,
          onEditingComplete: () {
            _fieldFocusChange(
              context,
              focusNode,
              nextFocusNode,
            );
            onEditingComplete?.call();
          },
        ),
      ],
    );
  }

  static Widget _buildTextFieldLabel(
    String label, {
    TextStyle? style,
  }) =>
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 4.h,
        ),
        child: Text(label, style: style),
      );

  static void _fieldFocusChange(
    BuildContext context,
    FocusNode currentFocus, [
    FocusNode? nextFocus,
  ]) {
    currentFocus.unfocus();
    if (nextFocus != null) {
      FocusScope.of(context).requestFocus(nextFocus);
    }
  }
}
