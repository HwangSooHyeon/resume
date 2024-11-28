import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/l10n/l10n.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_localizations_view_model.g.dart';

@riverpod
class AppLocalizationsViewModel extends _$AppLocalizationsViewModel {
  @override
  AppLocalizations build() {
    final foundLocale = L10n.findLocaleByCountryCode(systemLocale.countryCode ?? 'KR');
    return lookupAppLocalizations(foundLocale);
  }

  void updateLocale(String countryCode) {
    final foundLocale = L10n.findLocaleByCountryCode(countryCode);
    state = lookupAppLocalizations(foundLocale);
  }
}
