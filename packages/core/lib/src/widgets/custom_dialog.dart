import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    Key? key,
    required this.title,
    this.description,
    required this.positiveButtonTitle,
    required this.negativeButtonTitle,
    required this.onAccepted,
    required this.onDeclined,
  }) : super(key: key);

  final String title;
  final String? description;
  final String positiveButtonTitle;
  final String negativeButtonTitle;
  final void Function() onAccepted;
  final void Function() onDeclined;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AlertDialog(
      contentPadding: EdgeInsets.only(top: 7.h, bottom: 12.h),
      actionsPadding: EdgeInsets.only(bottom: 24.h, left: 24.w, right: 24.w),
      titlePadding: EdgeInsets.only(top: 16.h),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(CustomDimens.radius12)),
      actions: [
        Row(
          children: [
            _buildNegativeButton(theme),
            SizedBox(width: 12.w),
            _buildPositiveButton(theme),
          ],
        ),
      ],
      title: SvgPicture.asset(CustomIcons.warning),
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        width: (MediaQuery.of(context).size.width - 32).w,
        child: Wrap(
          children: [
            _buildTitleText(theme),
            if (description != null) ...[
              SizedBox(height: 12.h),
              _buildDescriptionText(),
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildDescriptionText() => Center(
        child: Text(
          description!,
          style: TextStyle(
            color: CustomColors.description,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.center,
        ),
      );

  Widget _buildTitleText(ThemeData theme) => Center(
        child: Text(
          title,
          style: TextStyle(
              color: theme.primaryColor,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      );

  Widget _buildPositiveButton(ThemeData theme) => Expanded(
        child: ElevatedButton(
          onPressed: onAccepted,
          child: Container(
            alignment: Alignment.center,
            child: Text(positiveButtonTitle),
          ),
          style: ElevatedButton.styleFrom(
            textStyle: theme.textTheme.button?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.colorScheme.onError,
            ),
            primary: theme.colorScheme.error,
          ),
        ),
      );

  Widget _buildNegativeButton(ThemeData theme) {
    return Expanded(
      child: OutlinedButton(
        onPressed: onDeclined,
        child: Text(
          negativeButtonTitle,
          style: theme.textTheme.button?.copyWith(
            color: theme.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(CustomDimens.radius12)),
          side: BorderSide(color: theme.primaryColor),
        ),
      ),
    );
  }
}
