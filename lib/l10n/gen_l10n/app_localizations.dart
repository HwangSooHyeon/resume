import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ko.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ko')
  ];

  /// No description provided for @language.
  ///
  /// In ko, this message translates to:
  /// **'한국어'**
  String get language;

  /// No description provided for @title.
  ///
  /// In ko, this message translates to:
  /// **'크로스플랫폼 앱 개발자'**
  String get title;

  /// No description provided for @name.
  ///
  /// In ko, this message translates to:
  /// **'이름'**
  String get name;

  /// No description provided for @myName.
  ///
  /// In ko, this message translates to:
  /// **'황수현'**
  String get myName;

  /// No description provided for @home.
  ///
  /// In ko, this message translates to:
  /// **'홈'**
  String get home;

  /// No description provided for @coverLetter.
  ///
  /// In ko, this message translates to:
  /// **'자기소개'**
  String get coverLetter;

  /// No description provided for @skills.
  ///
  /// In ko, this message translates to:
  /// **'스킬'**
  String get skills;

  /// No description provided for @cv.
  ///
  /// In ko, this message translates to:
  /// **'이력'**
  String get cv;

  /// No description provided for @config.
  ///
  /// In ko, this message translates to:
  /// **'설정'**
  String get config;

  /// No description provided for @sendingEmail.
  ///
  /// In ko, this message translates to:
  /// **'이메일 보내기'**
  String get sendingEmail;

  /// No description provided for @homeTitle1.
  ///
  /// In ko, this message translates to:
  /// **'크로스플랫폼 앱 개발'**
  String get homeTitle1;

  /// No description provided for @homeTitle2.
  ///
  /// In ko, this message translates to:
  /// **'준비된 플러터 개발자 황수현과 함께'**
  String get homeTitle2;

  /// No description provided for @homeTitle3.
  ///
  /// In ko, this message translates to:
  /// **'AOS, IOS 개발 및 출시를 한 번에 해결하세요'**
  String get homeTitle3;

  /// No description provided for @homeTitle4.
  ///
  /// In ko, this message translates to:
  /// **'황수현과 함께라면,'**
  String get homeTitle4;

  /// No description provided for @homeTitle5.
  ///
  /// In ko, this message translates to:
  /// **'원하는 앱을 만들 수 있을거에요'**
  String get homeTitle5;

  /// No description provided for @homeInvestar1.
  ///
  /// In ko, this message translates to:
  /// **'인베스타'**
  String get homeInvestar1;

  /// No description provided for @homeInvestar2_1.
  ///
  /// In ko, this message translates to:
  /// **'암호화폐'**
  String get homeInvestar2_1;

  /// No description provided for @homeInvestar2_2.
  ///
  /// In ko, this message translates to:
  /// **'정보 앱'**
  String get homeInvestar2_2;

  /// No description provided for @homeInvestar3.
  ///
  /// In ko, this message translates to:
  /// **'UI, UX, 로직 개선 작업을 했어요'**
  String get homeInvestar3;

  /// No description provided for @homeInvestar4_1.
  ///
  /// In ko, this message translates to:
  /// **'신규 페이지 개발과'**
  String get homeInvestar4_1;

  /// No description provided for @homeInvestar4_2.
  ///
  /// In ko, this message translates to:
  /// **'유지보수를 했어요'**
  String get homeInvestar4_2;

  /// No description provided for @homeInvestarBackoffice1.
  ///
  /// In ko, this message translates to:
  /// **'인베스타 백오피스'**
  String get homeInvestarBackoffice1;

  /// No description provided for @homeInvestarBackoffice2_1.
  ///
  /// In ko, this message translates to:
  /// **'커뮤니티 관리를 위해'**
  String get homeInvestarBackoffice2_1;

  /// No description provided for @homeInvestarBackoffice2_2.
  ///
  /// In ko, this message translates to:
  /// **'전체 시스템 개발을 했어요'**
  String get homeInvestarBackoffice2_2;

  /// No description provided for @homeSbl1.
  ///
  /// In ko, this message translates to:
  /// **'SBL APP'**
  String get homeSbl1;

  /// No description provided for @homeSbl2_1.
  ///
  /// In ko, this message translates to:
  /// **'주식'**
  String get homeSbl2_1;

  /// No description provided for @homeSbl2_2.
  ///
  /// In ko, this message translates to:
  /// **'대차거래'**
  String get homeSbl2_2;

  /// No description provided for @homeSbl2_3.
  ///
  /// In ko, this message translates to:
  /// **'중계 앱'**
  String get homeSbl2_3;

  /// No description provided for @homeSbl3_1.
  ///
  /// In ko, this message translates to:
  /// **'핵심 로직을 포함하여'**
  String get homeSbl3_1;

  /// No description provided for @homeSbl3_2.
  ///
  /// In ko, this message translates to:
  /// **'대부분의 기능을 개발했어요'**
  String get homeSbl3_2;

  /// No description provided for @homeFireAnt1.
  ///
  /// In ko, this message translates to:
  /// **'불개미'**
  String get homeFireAnt1;

  /// No description provided for @homeFireAnt2_1.
  ///
  /// In ko, this message translates to:
  /// **'주식'**
  String get homeFireAnt2_1;

  /// No description provided for @homeFireAnt2_2.
  ///
  /// In ko, this message translates to:
  /// **'공매도'**
  String get homeFireAnt2_2;

  /// No description provided for @homeFireAnt2_3.
  ///
  /// In ko, this message translates to:
  /// **'정보 앱'**
  String get homeFireAnt2_3;

  /// No description provided for @homeFireAnt3_1.
  ///
  /// In ko, this message translates to:
  /// **'핵심 로직을 포함하여'**
  String get homeFireAnt3_1;

  /// No description provided for @homeFireAnt3_2.
  ///
  /// In ko, this message translates to:
  /// **'전체 기능을 개발했어요'**
  String get homeFireAnt3_2;

  /// No description provided for @seeMore.
  ///
  /// In ko, this message translates to:
  /// **'자세히 알아보기'**
  String get seeMore;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ko': return AppLocalizationsKo();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
