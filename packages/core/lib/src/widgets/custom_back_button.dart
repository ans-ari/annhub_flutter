import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core.dart';
import '../../generated/l10n.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
    this.hasLabel = false,
  }) : super(key: key);

  final bool hasLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.h,
          height: 44.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16.r)),
            color: CustomColors.appBarNavigationButtonBackground,
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          child: GestureDetector(
            onTap: () => FluroRouter.appRouter.pop(context),
            child: SvgPicture.asset(CustomIcons.arrowBack),
          ),
        ),
        if (hasLabel) ...[
          SizedBox(width: 12.w),
          Text(
            S.current.back,
            style: TextStyle(
              color: CustomColors.dark,
              fontSize: 16.sp,
              fontFamily: CustomFonts.spartan,
              fontWeight: FontWeight.w600,
            ),
          ),
        ]
      ],
    );
  }
}
