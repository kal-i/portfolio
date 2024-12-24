import 'package:flutter/material.dart';
import 'package:portfolio/config/themes/app_color.dart';
import 'package:portfolio/core/constants/assets_path.dart';

class AppTheme {

  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColor.background,
    fontFamily: 'Montserrat',
    textTheme: desktopTextTheme,
  );

  static const desktopTextTheme = TextTheme(
    displayLarge: TextStyle(
      color: AppColor.headlineText,
      fontSize: 36.0,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      color: AppColor.titleText,
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      color: AppColor.navigationLinkText,
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      color: AppColor.descriptionText,
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
    ),
  );

  static const mobileTextTheme = TextTheme();
}