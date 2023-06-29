import 'package:flutter/material.dart';
import 'package:podchess_app/common/constants/string_constants.dart';

import 'app_color.dart';

class CustomThemeData {
  static ThemeData lightTheme = ThemeData(
    fontFamily: StringConstants.fontFamily,
    primaryColor: AppColor.lightGrey,
    primaryColorLight: AppColor.lightBlue,
    colorScheme: const ColorScheme.light(
        primary: AppColor.lightGrey,
        secondary: AppColor.whiteColor,
        background: AppColor.imageBackground,
        surface: AppColor.blue),
    scaffoldBackgroundColor: AppColor.backgroundLight,
    cardColor: AppColor.lightGrey,
    canvasColor: AppColor.whiteColor,
    focusColor: AppColor.imageBackground,
    textTheme: const TextTheme(
        labelSmall: TextStyle(fontSize: 9, fontWeight: FontWeight.w200),
        labelMedium: TextStyle(fontSize: 11, color: AppColor.textColor),
        displayLarge: TextStyle(
            fontSize: 13,
            color: AppColor.textColor,
            fontWeight: FontWeight.w400),
        displayMedium: TextStyle(
            fontSize: 12,
            color: AppColor.textColor,
            fontWeight: FontWeight.w400),
        displaySmall: TextStyle(
          fontSize: 10,
          color: AppColor.textColor,
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
            fontWeight: FontWeight.w500,
            color: AppColor.whiteColor,
            fontSize: 18),
        headlineLarge: TextStyle(
          color: AppColor.whiteColor,
          fontWeight: FontWeight.w700,
          // fontFamily: StringConstants.fontAppBarHeading,
          fontSize: 28,
        ),
        headlineSmall: TextStyle(
            color: AppColor.textColor,
            fontWeight: FontWeight.w400,
            fontSize: 15),
        titleLarge: TextStyle(
          color: AppColor.whiteColor,
          fontWeight: FontWeight.w700,
          fontSize: 25,
        ),
        bodyMedium: TextStyle(
            color: AppColor.textColor,
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: StringConstants.fontFamily),
        bodySmall: TextStyle(
            color: AppColor.lightGrey,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            fontFamily: StringConstants.fontFamily)),
  );
}
