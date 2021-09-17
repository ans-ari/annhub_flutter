import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(S.current.unexpected_error_occurred),
      ),
    );
  }
}
