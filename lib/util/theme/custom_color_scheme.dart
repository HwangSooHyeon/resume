import 'package:flutter/material.dart';

class CustomColorScheme {
  // Light Mode ColorScheme
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF2BAF7E),
    onPrimary: Colors.white,
    secondary: Color(0xFF6E6E73),
    onSecondary: Colors.white,
    tertiary: Color(0xFF1D1D1F),
    onTertiary: Colors.white,
    error: Color(0xFFFF4C4C),
    onError: Colors.white,
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1D1D1F),
  );

  // Dark Mode ColorScheme
  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF2BAF7E),
    onPrimary: Colors.black,
    secondary: Color(0xFF6E6E73),
    onSecondary: Colors.black,
    tertiary: Color(0xFFFFFFFF),
    onTertiary: Colors.black,
    error: Color(0xFFFF4C4C),
    onError: Colors.black,
    surface: Color(0xFF1E1E1E),
    onSurface: Colors.white,
  );
}
