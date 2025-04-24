import 'package:flutter/material.dart';
import 'package:resume/core/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/core/l10n/l10n.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_localizations_state_provider.g.dart';

@riverpod
class AppLocalizationsState extends _$AppLocalizationsState {
  @override
  AppLocalizations build() {
    final foundLocale =
        L10n.findLocaleByCountryCode(systemLocale.countryCode ?? 'KR');
    return lookupAppLocalizations(foundLocale);
  }

  void updateLocale(String countryCode) {
    final foundLocale = L10n.findLocaleByCountryCode(countryCode);
    state = lookupAppLocalizations(foundLocale);
  }

  void toggleLocale(BuildContext context) {
    state = lookupAppLocalizations(
        switch (AppLocalizations.of(context)?.localeName) {
      'ko' => L10n.findLocaleByLanguageCode('en'),
      'en' => L10n.findLocaleByLanguageCode('ko'),
      _ => L10n.findLocaleByLanguageCode('ko'),
    });
  }
}
