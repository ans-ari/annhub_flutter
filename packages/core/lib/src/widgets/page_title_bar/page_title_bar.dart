import 'package:flutter/material.dart';

import '../../../core.dart';

class PageTitleBar extends StatelessWidget {
  const PageTitleBar({Key? key, required this.title, this.hasLogo = false})
      : super(key: key);

  final String title;
  final bool hasLogo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PageTitleOnPageTitleBar(title: title),
        if (hasLogo) const AppLogoOnPageTitleBar(),
      ],
    );
  }
}
