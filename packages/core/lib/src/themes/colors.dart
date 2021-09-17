import 'package:flutter/material.dart';

mixin CustomColors {
  static const _white = MaterialColor(0xffffffff, {});
  static const _green = MaterialColor(0xff15d59a, {});
  static const _red = MaterialColor(0xfff73c28, {});
  static const _darkBlue = MaterialColor(0xff0b0d26, {90: Color(0xE60B0D26)});
  static const _darkBlueLighter = MaterialColor(0xffa7bbd1, {});
  static const _yellow = MaterialColor(0xfff7b917, {});
  static const _gray = MaterialColor(0xff808fa6, {});
  static const _comet = MaterialColor(0xff57627b, {});
  static const _eggShellBlue = MaterialColor(0xffcbffef, {});
  static const _aqua = MaterialColor(0xffe9eef3, {});
  static const _aquaHaze = Color(0xffE9EEF3);
  static const _pinkGray = Color(0xffaec2e0);

  static const primary = _green;
  static const onPrimary = _white;
  static const dark = _darkBlue;
  static const onDark = _white;
  static const darkAccent = _darkBlueLighter;
  static const onDarkAccent = _white;
  static const background = _white;
  static const onBackground = _darkBlue;
  static const onBackgroundAccent = _darkBlueLighter;
  static const onBackgroundNegative = _red;
  static const onBackgroundPositive = _green;
  static const surface = _aqua;
  static const onSurface = _darkBlue;
  static const onSurfaceAccent = _gray;
  static const error = _red;
  static const onError = _white;
  static const title = _darkBlue;
  static const description = _comet;
  static const caption = _eggShellBlue;
  static const positive = _green;
  static const onPositive = _white;
  static const negative = _red;
  static const pending = _yellow;
  static const onNegative = _white;
  static const neutral = _white;
  static const onNeutral = _darkBlue;
  static const appBarNavigationButtonBackground = _aquaHaze;
  static const authenticationDivider = Color(0xffe4e4e5);
  static const authenticationCaption = Color(0xff0c395b);
  static const hintColor = _pinkGray;

  static Color? selectorIconColor({required isSelected}) =>
      isSelected ? _darkBlue : darkAccent;
}
