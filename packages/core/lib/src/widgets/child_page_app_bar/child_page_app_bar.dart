import 'package:flutter/material.dart';

import '../../../core.dart';

class ChildPageAppBar {
  static AppBar build(BuildContext context, {bool hasLabel = false}) {
    final theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.backgroundColor,
      automaticallyImplyLeading: false,
      toolbarHeight: CustomDimens.toolbarHeight,
      title: CustomBackButton(hasLabel: hasLabel),
    );
  }
}
