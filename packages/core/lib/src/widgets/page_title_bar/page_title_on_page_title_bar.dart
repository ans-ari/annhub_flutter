import 'package:flutter/material.dart';

class PageTitleOnPageTitleBar extends StatelessWidget {
  const PageTitleOnPageTitleBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      title,
      style: theme.textTheme.headline4?.copyWith(
        color: theme.colorScheme.secondary,
      ),
    );
  }
}
