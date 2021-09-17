import '../../core.dart';
import '../../generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletActions extends StatelessWidget {
  const WalletActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildIconButtonWithBottomLabel(
            theme,
            svgAsset: CustomIcons.send,
            label: S.current.send,
            onPressed: () {},
          ),
          _buildIconButtonWithBottomLabel(
            theme,
            svgAsset: CustomIcons.arrowDown,
            label: S.current.receive,
            onPressed: () {},
          ),
          _buildIconButtonWithBottomLabel(
            theme,
            svgAsset: CustomIcons.cart,
            label: S.current.buy,
            onPressed: () {},
          ),
          _buildIconButtonWithBottomLabel(
            theme,
            svgAsset: CustomIcons.repeat,
            label: S.current.swap,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildIconButtonWithBottomLabel(
    ThemeData theme, {
    required String svgAsset,
    required String label,
    required void Function() onPressed,
  }) =>
      Flexible(
        child: Container(
          alignment: Alignment.center,
          child: TextButton(
            style: theme.textButtonTheme.style,
            onPressed: onPressed,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28.r,
                  backgroundColor: theme.colorScheme.secondary,
                  child: SvgPicture.asset(
                    svgAsset,
                    width: 33.w,
                    height: 33.h,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: Text(
                    label,
                    style: theme.textTheme.button?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
