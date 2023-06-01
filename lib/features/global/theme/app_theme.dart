

import 'dart:ui';
import 'package:flutter/painting.dart';
import 'package:flutter/material.dart';
import 'package:pixify/features/global/theme/app_colors.dart';
import 'package:pixify/features/global/theme/app_text_style.dart';

class AppTheme {
  static final AppTextStyle _appTextStyle = AppTextStyle.instance!;

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    backgroundColor: AppColor.bgWhiteColor,
    scaffoldBackgroundColor: AppColor.bgWhiteColor,
    primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
     displayLarge: _appTextStyle.displayLarge,
      displayMedium: _appTextStyle.displayMedium,
      displaySmall: _appTextStyle.displaySmall,
      headlineLarge: _appTextStyle.headlineLarge,
      headlineMedium: _appTextStyle.headlineMedium,
      headlineSmall: _appTextStyle.headlineSmall,
      titleLarge: _appTextStyle.titleLarge,
      titleMedium: _appTextStyle.titleMedium,
      titleSmall: _appTextStyle.titleSmall,
      labelLarge: _appTextStyle.labelLarge,
      labelMedium: _appTextStyle.labelMedium,
      labelSmall: _appTextStyle.labelSmall,
      bodyLarge: _appTextStyle.bodyLarge,
      bodyMedium: _appTextStyle.bodyMedium,
      bodySmall: _appTextStyle.bodySmall,
  ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: AppColor.bgBlackColor,
    scaffoldBackgroundColor:AppColor.bgBlackColor,
    primaryColor: AppColor.primaryColor,
    primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
      displayLarge: _appTextStyle.displayLarge.copyWith(color: AppColor.whiteColor),
      displayMedium: _appTextStyle.displayMedium.copyWith(color: AppColor.whiteColor),
      displaySmall: _appTextStyle.displaySmall.copyWith(color: AppColor.whiteColor),
      headlineLarge: _appTextStyle.headlineLarge.copyWith(color: AppColor.whiteColor),
      headlineMedium: _appTextStyle.headlineMedium.copyWith(color: AppColor.whiteColor),
      headlineSmall: _appTextStyle.headlineSmall.copyWith(color: AppColor.whiteColor),
      titleLarge: _appTextStyle.titleLarge.copyWith(color: AppColor.whiteColor),
      titleMedium: _appTextStyle.titleMedium.copyWith(color: AppColor.whiteColor),
      titleSmall: _appTextStyle.titleSmall.copyWith(color: AppColor.whiteColor),
      labelLarge: _appTextStyle.labelLarge.copyWith(color: AppColor.whiteColor),
      labelMedium: _appTextStyle.labelMedium.copyWith(color: AppColor.whiteColor),
      labelSmall: _appTextStyle.labelSmall.copyWith(color: AppColor.whiteColor),
      bodyLarge: _appTextStyle.bodyLarge.copyWith(color: AppColor.whiteColor),
      bodyMedium: _appTextStyle.bodyMedium.copyWith(color: AppColor.whiteColor),
      bodySmall: _appTextStyle.bodySmall.copyWith(color: AppColor.whiteColor),
    ),
  );
}