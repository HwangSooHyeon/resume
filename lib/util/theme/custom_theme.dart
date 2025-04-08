import 'package:flutter/material.dart';
import 'package:resume/util/theme/custom_color_scheme.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class CustomTheme {
  static ThemeData themeData({
    bool isDark = false,
  }) =>
      ThemeData(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primaryColor: const Color(0xFF2BAF7E),
        scaffoldBackgroundColor:
            isDark ? const Color(0xFF121212) : const Color(0xFFFAFAFC),
        colorScheme: isDark
            ? CustomColorScheme.darkColorScheme
            : CustomColorScheme.lightColorScheme,
        fontFamily: 'NanumSquareNeo',
        textTheme: CustomTextTheme.textTheme,
        hoverColor: Colors.transparent,
        useMaterial3: true,
        appBarTheme: isDark
            ? const AppBarTheme(
                backgroundColor: Color(0xFF121212),
                foregroundColor: Colors.white,
                elevation: 0,
              )
            : const AppBarTheme(
                backgroundColor: Color(0xFFFAFAFC),
                foregroundColor: Color(0xFF1D1D1F),
                elevation: 0,
              ),
      );
}
