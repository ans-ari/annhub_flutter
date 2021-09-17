import 'package:flutter/cupertino.dart';

extension MediaQueryExtension on MediaQueryData {
  bool get isLongDevice => size.height > 640;
}
