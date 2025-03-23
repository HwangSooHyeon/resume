import 'package:flutter/material.dart';
import 'package:resume/util/theme/custom_color_scheme.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class CustomTheme {
  static const Color investarColor = Colors.yellow;
  static const Color koreaUnivColor = Color(0xffDC143C);
  static const Color woowaColor = Colors.lightBlue;
  static const Color directionalColor = Colors.blueAccent;

  static ThemeData themeData({
    bool isDark = false,
  }) =>
      ThemeData(
        colorScheme: isDark
            ? CustomColorScheme.darkColorScheme
            : CustomColorScheme.lightColorScheme,
        fontFamily: 'NanumSquareNeo',
        textTheme: CustomTextTheme.textTheme,
        hoverColor: Colors.transparent,
        useMaterial3: true,
      );
}
