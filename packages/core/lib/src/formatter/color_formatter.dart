import 'package:flutter/material.dart';

import '../../core.dart';

class ColorFormatter {
  static MaterialColor toUpdateRateColors({required double rate}) =>
      rate < 0 ? CustomColors.negative : CustomColors.positive;
}
