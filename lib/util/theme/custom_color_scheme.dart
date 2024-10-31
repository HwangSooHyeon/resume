import 'package:flutter/material.dart';

class CustomColorScheme {
  static final lightColorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xff304ffe),
    brightness: Brightness.light,
  );
  static final darkColorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xff304ffe),
    brightness: Brightness.dark,
  );
}
