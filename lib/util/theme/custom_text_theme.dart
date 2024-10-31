import 'package:flutter/material.dart';

class CustomTextTheme {
  static double getFontHeight({
    required double fontSize,
  }) {
    if (fontSize > 19) {
      return (fontSize + 4) / fontSize;
    }
    return (fontSize + 2) / fontSize;
  }

  static TextStyle regularTextStyle({
    required double fontSize,
    double? height,
    FontWeight fontWeight = FontWeight.w400,
  }) =>
      TextStyle(
        fontSize: fontSize,
        height: getFontHeight(fontSize: fontSize),
        fontWeight: fontWeight,
      );

  static TextStyle boldTextStyle({
    required double fontSize,
    double? height,
  }) =>
      regularTextStyle(
        fontSize: fontSize,
        height: height,
      ).copyWith(
        fontWeight: FontWeight.w700,
      );

  static TextStyle lightTextStyle({
    required double fontSize,
    double? height,
  }) =>
      regularTextStyle(
        fontSize: fontSize,
        height: height,
      ).copyWith(
        fontWeight: FontWeight.w300,
      );

  static TextTheme textTheme = TextTheme(
    headlineMedium: boldTextStyle(
      fontSize: 18,
    ),
    titleLarge: boldTextStyle(
      fontSize: 20,
    ),
    titleMedium: boldTextStyle(
      fontSize: 18,
    ),
    titleSmall: boldTextStyle(
      fontSize: 16,
    ),
    labelLarge: boldTextStyle(
      fontSize: 16,
    ),
    labelMedium: regularTextStyle(
      fontSize: 14,
    ),
    labelSmall: regularTextStyle(
      fontSize: 12,
    ),
    bodyLarge: regularTextStyle(
      fontSize: 18,
    ),
    bodyMedium: regularTextStyle(
      fontSize: 16,
    ),
    bodySmall: regularTextStyle(
      fontSize: 14,
    ),
  ).apply();

  TextStyle get paragraphMedium => regularTextStyle(
    fontSize: 14,
    height: 26,
  );

  TextStyle get paragraphLarge => regularTextStyle(
    fontSize: 16,
    height: 28,
  );
}
