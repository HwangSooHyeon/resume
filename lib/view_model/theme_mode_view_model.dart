import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_view_model.g.dart';

@riverpod
class ThemeModeViewModel extends _$ThemeModeViewModel {
  @override
  ThemeMode build() {
    return ThemeMode.system;
  }

  void toggleThemeMode(BuildContext context) {
    final brightness = context.theme.brightness;
    if (brightness == Brightness.light) {
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.light;
    }
  }
}