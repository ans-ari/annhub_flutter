import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core.dart';

mixin CustomTheme {
  static ThemeData get introTheme => ThemeData(
        // primaryColor: CustomColors.dark,
        // scaffoldBackgroundColor: CustomColors.dark,
        fontFamily: CustomFonts.spartan,
        textTheme: TextTheme(
          subtitle1: TextStyle(
            fontSize: 16.sp,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          headline5: TextStyle(
            fontSize: 24.sp,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 32.h),
          ),
        ),
        appBarTheme: const AppBarTheme(
          brightness: Brightness.dark,
          centerTitle: false,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            // primary: CustomColors.primary,
            // onPrimary: CustomColors.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(CustomDimens.radius16),
            ),
            fixedSize: Size(double.infinity, 56.h),
          ),
        ),
      );

  static final _bottomNavIconTheme = IconThemeData(
    size: CustomDimens.iconVerySmall,
  );

  static final _bottomNavTextStyle = TextStyle(
    fontFamily: CustomFonts.poppins,
    fontSize: 8.sp,
  );

  static const _mainColorScheme = ColorScheme(
    primary: CustomColors.primary,
    primaryVariant: CustomColors.primary,
    onPrimary: CustomColors.onPrimary,
    secondary: CustomColors.dark,
    secondaryVariant: CustomColors.dark,
    onSecondary: CustomColors.onDark,
    background: CustomColors.background,
    onBackground: CustomColors.onBackground,
    brightness: Brightness.light,
    onSurface: CustomColors.onSurface,
    surface: CustomColors.surface,
    error: CustomColors.error,
    onError: CustomColors.onError,
  );

  static ThemeData get mainTheme => ThemeData(
        // primaryColor: CustomColors.primary,
        // primaryColorDark: CustomColors.dark,
        primaryColorBrightness: Brightness.light,
        backgroundColor: CustomColors.background,
        scaffoldBackgroundColor: Colors.white,
        indicatorColor: CustomColors.dark,
        cardColor: CustomColors.background,
        // colorScheme: _mainColorScheme,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          brightness: Brightness.dark,
          centerTitle: false,
        ),
        tabBarTheme: TabBarTheme(
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
          labelColor: CustomColors.dark,
          unselectedLabelStyle: TextStyle(
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
          ),
          unselectedLabelColor: CustomColors.onSurfaceAccent,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: _bottomNavIconTheme,
          selectedItemColor: CustomColors.onSurface,
          selectedLabelStyle: _bottomNavTextStyle,
          unselectedIconTheme: _bottomNavIconTheme,
          unselectedItemColor: CustomColors.darkAccent,
          unselectedLabelStyle: _bottomNavTextStyle,
        ),
        textTheme: TextTheme(
          subtitle1: TextStyle(
            fontSize: 16.sp,
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.w600,
          ),
          subtitle2: TextStyle(
            fontSize: 14.sp,
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.w500,
          ),
          bodyText1: TextStyle(
            fontSize: 16.sp,
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.w500,
          ),
          caption: TextStyle(
            fontSize: 12.sp,
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.w500,
          ),
          headline4: TextStyle(
            fontSize: 28.sp,
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.w700,
          ),
          headline5: TextStyle(
            fontSize: 24.sp,
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.w700,
          ),
          button: TextStyle(
            fontSize: 14.sp,
            fontFamily: CustomFonts.spartan,
            fontWeight: FontWeight.w500,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            alignment: Alignment.center,
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            fixedSize: Size(double.infinity, 52.h),
            side: BorderSide(
              color: CustomColors.onSurfaceAccent,
              width: 2.w,
              style: BorderStyle.solid,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            // primary: CustomColors.primary,
            // onPrimary: CustomColors.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(CustomDimens.radius16),
            ),
            fixedSize: Size(double.infinity, 56.h),
            textStyle: TextStyle(
              fontSize: 16.sp,
              fontFamily: CustomFonts.spartan,
              fontWeight: FontWeight.bold,
              color: _mainColorScheme.onPrimary,
            ),
          ),
        ),
      );
}
