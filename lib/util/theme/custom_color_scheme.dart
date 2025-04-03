import 'package:flutter/material.dart';

class CustomColorScheme {
  // Light Mode ColorScheme
  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFBEFF00), // 기본 primary
    onPrimary: Color(0xFF000000),
    primaryContainer: Color(0xFFE6FF8A),
    onPrimaryContainer: Color(0xFF1F1F00),
    secondary: Color(0xFF5A7E00),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFD4E39E),
    onSecondaryContainer: Color(0xFF1B1C1A),
    background: Color(0xFFFFFFFF),
    onBackground: Color(0xFF1C1B1F),
    surface: Color(0xFFFFFFFF),
    onSurface: Color(0xFF1C1B1F),
    error: Color(0xFFBA1A1A),
    onError: Color(0xFFFFFFFF),
  );

  // Dark Mode ColorScheme
  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFD1FF59),
    onPrimary: Color(0xFF3A3A00),
    primaryContainer: Color(0xFF8F9900),
    onPrimaryContainer: Color(0xFFF1FF9C),
    secondary: Color(0xFFB1C300),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFF6B7D2B),
    onSecondaryContainer: Color(0xFFF0F0F0),
    background: Color(0xFF1C1B1F),
    onBackground: Color(0xFFE6E1E5),
    surface: Color(0xFF1C1B1F),
    onSurface: Color(0xFFE6E1E5),
    error: Color(0xFFFFB4AB),
    onError: Color(0xFF690005),
  );
}
