import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core.dart';

class AppLogoOnPageTitleBar extends StatelessWidget {
  const AppLogoOnPageTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SvgPicture.asset(
      CustomIcons.logo,
      color: theme.colorScheme.secondary,
      width: CustomDimens.iconOnAppBarWidth,
      height: CustomDimens.iconOnAppBarHeight,
    );
  }
}
