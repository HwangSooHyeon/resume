import 'package:flutter/material.dart';
import 'package:resume/util/theme/custom_color_scheme.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class CustomTheme {
  static ThemeData themeData({
    bool isDark = false,
  }) =>
      ThemeData(
        colorScheme: isDark
            ? CustomColorScheme.darkColorScheme
            : CustomColorScheme.lightColorScheme,
        fontFamily: 'NanumSquareNeo',
        textTheme: CustomTextTheme.textTheme,
        useMaterial3: true,
      );
}
