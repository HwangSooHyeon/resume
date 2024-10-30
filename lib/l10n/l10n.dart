import 'package:flutter/material.dart';

final systemLocale = WidgetsBinding.instance.platformDispatcher.locale;

class L10n {
  static final locales = <Locale>[
    const Locale('en', 'US'),
    const Locale('ko', 'KR'),
  ];

  static Locale findLocaleByLanguageCode(String languageCode) {
    for (var locale in locales) {
      if (locale.languageCode == languageCode) {
        return locale;
      }
    }
    return systemLocale;
  }

  static Locale findLocaleByCountryCode(String countryCode) {
    for (var locale in locales) {
      if (locale.countryCode == countryCode) {
        return locale;
      }
    }
    return systemLocale;
  }
}