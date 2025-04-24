import 'package:flutter/material.dart';
import 'package:resume/core/l10n/gen_l10n/app_localizations.dart';

extension BuildContextExtension on BuildContext {
  // ThemeData
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;

  //  MediaQueryData
  MediaQueryData get mediaQueryData => MediaQuery.of(this);
  Size get size => mediaQueryData.size;
  double get width => size.width;
  double get height => size.height;

  // Localization
  AppLocalizations? get locale => AppLocalizations.of(this);
}
