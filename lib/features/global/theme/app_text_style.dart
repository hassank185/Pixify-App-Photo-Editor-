import 'package:flutter/painting.dart';


import 'package:pixify/features/global/theme/app_colors.dart';

class AppTextStyle {
  static AppTextStyle instance = AppTextStyle();

  TextStyle displayLarge = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 57,
    fontWeight: FontWeight.bold,
  );

  TextStyle displayMedium = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );

  TextStyle displaySmall = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  TextStyle headlineLarge = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  TextStyle headlineMedium = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  TextStyle headlineSmall = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  TextStyle titleLarge = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  TextStyle titleMedium = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  TextStyle titleSmall = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  TextStyle labelLarge = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  TextStyle labelMedium = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  TextStyle labelSmall = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 11,
    fontWeight: FontWeight.bold,
  );

  TextStyle bodyLarge = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  TextStyle bodyMedium = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  TextStyle bodySmall = TextStyle(
    color: AppColor.blackGreyColor,
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );
}
