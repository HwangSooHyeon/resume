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

  /// No description provided for @readMore.
  ///
  /// In ko, this message translates to:
  /// **'더보기'**
  String get readMore;

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
  /// **'AOS, IOS 개발 및 출시를 한 번에 해결하세요.'**
  String get homeTitle3;

  /// No description provided for @homeTitle4.
  ///
  /// In ko, this message translates to:
  /// **'황수현과 함께라면,'**
  String get homeTitle4;

  /// No description provided for @homeTitle5.
  ///
  /// In ko, this message translates to:
  /// **'원하는 앱을 만들 수 있을거에요.'**
  String get homeTitle5;

  /// No description provided for @homeInvestar1.
  ///
  /// In ko, this message translates to:
  /// **'인베스타'**
  String get homeInvestar1;

  /// No description provided for @homeInvestar2.
  ///
  /// In ko, this message translates to:
  /// **'암호화폐 정보 앱'**
  String get homeInvestar2;

  /// No description provided for @homeInvestar3.
  ///
  /// In ko, this message translates to:
  /// **'UI, UX, 로직 개선 작업 및 신규 페이지 개발과 유지보수를 했어요.'**
  String get homeInvestar3;

  /// No description provided for @homeInvestar5.
  ///
  /// In ko, this message translates to:
  /// **'주요기술: GraphQL, Provider, Firebase'**
  String get homeInvestar5;

  /// No description provided for @homeInvestarBackoffice1.
  ///
  /// In ko, this message translates to:
  /// **'인베스타 백오피스'**
  String get homeInvestarBackoffice1;

  /// No description provided for @homeInvestarBackoffice2.
  ///
  /// In ko, this message translates to:
  /// **'커뮤니티 관리를 위해 전체 시스템 개발을 했어요.'**
  String get homeInvestarBackoffice2;

  /// No description provided for @homeInvestarBackoffice3.
  ///
  /// In ko, this message translates to:
  /// **'주요기술: Retrofit, Riverpod, Dio, Freezed'**
  String get homeInvestarBackoffice3;

  /// No description provided for @homeSbl1.
  ///
  /// In ko, this message translates to:
  /// **'SBL APP'**
  String get homeSbl1;

  /// No description provided for @homeSbl2.
  ///
  /// In ko, this message translates to:
  /// **'주식 대차거래 중계 앱'**
  String get homeSbl2;

  /// No description provided for @homeSbl3.
  ///
  /// In ko, this message translates to:
  /// **'핵심 로직을 포함하여 대부분의 기능을 개발했어요.'**
  String get homeSbl3;

  /// No description provided for @homeSbl4.
  ///
  /// In ko, this message translates to:
  /// **'주요기술: Retrofit, Riverpod, Dio, Freezed'**
  String get homeSbl4;

  /// No description provided for @homeFireAnt1.
  ///
  /// In ko, this message translates to:
  /// **'불개미'**
  String get homeFireAnt1;

  /// No description provided for @homeFireAnt2.
  ///
  /// In ko, this message translates to:
  /// **'주식 공매도 정보 앱'**
  String get homeFireAnt2;

  /// No description provided for @homeFireAnt3.
  ///
  /// In ko, this message translates to:
  /// **'핵심 로직을 포함하여 전체 기능을 개발했어요.'**
  String get homeFireAnt3;

  /// No description provided for @homeFireAnt4.
  ///
  /// In ko, this message translates to:
  /// **'주요기술: Optimistic Response, SQLite, Firebase'**
  String get homeFireAnt4;

  /// No description provided for @seeMore.
  ///
  /// In ko, this message translates to:
  /// **'자세히 알아보기'**
  String get seeMore;

  /// No description provided for @coverLetterTitle1.
  ///
  /// In ko, this message translates to:
  /// **'저는 열정의 힘을 믿습니다.'**
  String get coverLetterTitle1;

  /// No description provided for @coverLetterTitle2.
  ///
  /// In ko, this message translates to:
  /// **'만약 비전공자인 제가 열정이 없었다면, 개발자의 길을 걸을 수 없었을 것입니다.'**
  String get coverLetterTitle2;

  /// No description provided for @coverLetterTitle3.
  ///
  /// In ko, this message translates to:
  /// **'JAVA 백엔드 개발자로 시작하여 Flutter 개발자가 되기까지'**
  String get coverLetterTitle3;

  /// No description provided for @coverLetterTitle4.
  ///
  /// In ko, this message translates to:
  /// **'열정은 현재도 저의 원동력입니다.'**
  String get coverLetterTitle4;

  /// No description provided for @coverLetterCard1_1.
  ///
  /// In ko, this message translates to:
  /// **'포기하지 않습니다.'**
  String get coverLetterCard1_1;

  /// No description provided for @coverLetterCard1_2.
  ///
  /// In ko, this message translates to:
  /// **'기술적으로 어려운 작업이더라도 좌절하지 않습니다.'**
  String get coverLetterCard1_2;

  /// No description provided for @coverLetterCard1_3.
  ///
  /// In ko, this message translates to:
  /// **'제 역량이 닿는 한 반드시 완성하겠다는 목표로 작업에 임합니다.'**
  String get coverLetterCard1_3;

  /// No description provided for @coverLetterCard2_1.
  ///
  /// In ko, this message translates to:
  /// **'책임감을 갖고 일합니다.'**
  String get coverLetterCard2_1;

  /// No description provided for @coverLetterCard2_2.
  ///
  /// In ko, this message translates to:
  /// **'제게 할당된 일은 회피하지 않습니다.'**
  String get coverLetterCard2_2;

  /// No description provided for @coverLetterCard2_3.
  ///
  /// In ko, this message translates to:
  /// **'항상 더 나은 방법에 대해 고민하며 주인의식을 갖고 작업에 임합니다.'**
  String get coverLetterCard2_3;

  /// No description provided for @coverLetterCard3_1.
  ///
  /// In ko, this message translates to:
  /// **'준비되어 있습니다.'**
  String get coverLetterCard3_1;

  /// No description provided for @coverLetterCard3_2.
  ///
  /// In ko, this message translates to:
  /// **'저는 배움에 두려움이 없습니다.'**
  String get coverLetterCard3_2;

  /// No description provided for @coverLetterCard3_3.
  ///
  /// In ko, this message translates to:
  /// **'강의, 유튜브, 동료, 친구 등 모든 매체를 통해 능력을 개발하고 프로젝트에 적용하려 노력합니다.'**
  String get coverLetterCard3_3;

  /// No description provided for @coverLetterCard4_1.
  ///
  /// In ko, this message translates to:
  /// **'고객을 먼저 생각합니다.'**
  String get coverLetterCard4_1;

  /// No description provided for @coverLetterCard4_2.
  ///
  /// In ko, this message translates to:
  /// **'내가 만든 제품은 결국 고객에게 서비스를 제공하기 위한 것입니다.'**
  String get coverLetterCard4_2;

  /// No description provided for @coverLetterCard4_3.
  ///
  /// In ko, this message translates to:
  /// **'구상부터 구현까지 모든 프로세스에서 고객의 니즈에 대해 고민하며 작업에 임합니다.'**
  String get coverLetterCard4_3;

  /// No description provided for @skillsLanguageLevel1.
  ///
  /// In ko, this message translates to:
  /// **'문법을 이해하는 수준'**
  String get skillsLanguageLevel1;

  /// No description provided for @skillsLanguageLevel2.
  ///
  /// In ko, this message translates to:
  /// **'CRUD가 가능한 수준'**
  String get skillsLanguageLevel2;

  /// No description provided for @skillsLanguageLevel3.
  ///
  /// In ko, this message translates to:
  /// **'토이 프로젝트가 가능한 수준'**
  String get skillsLanguageLevel3;

  /// No description provided for @skillsLanguageLevel4.
  ///
  /// In ko, this message translates to:
  /// **'테스트 코드 작성이 가능한 수준'**
  String get skillsLanguageLevel4;

  /// No description provided for @skillsLanguageLevel5.
  ///
  /// In ko, this message translates to:
  /// **'프로젝트 개발 및 유지보수가 가능한 수준'**
  String get skillsLanguageLevel5;

  /// No description provided for @skillsLibraryRiverpod1.
  ///
  /// In ko, this message translates to:
  /// **'상태 관리를 할 수 있으며, 인스턴스의 처리 타이밍을 고려할 수 있다.'**
  String get skillsLibraryRiverpod1;

  /// No description provided for @skillsLibraryRiverpod2.
  ///
  /// In ko, this message translates to:
  /// **'특정 위젯만 상태 관리를 할 수 있다.'**
  String get skillsLibraryRiverpod2;

  /// No description provided for @skillsLibraryRetrofit.
  ///
  /// In ko, this message translates to:
  /// **'주어진 RestAPI를 이용해 레포지토리를 정의할 수 있다.'**
  String get skillsLibraryRetrofit;

  /// No description provided for @skillsLibraryDio.
  ///
  /// In ko, this message translates to:
  /// **'인터셉터를 정의하여 API 요청, 응답, 에러 발생 시 상황을 핸들링할 수 있다.'**
  String get skillsLibraryDio;

  /// No description provided for @skillsLibraryFirebase1.
  ///
  /// In ko, this message translates to:
  /// **'Push notification, Local notification을 적용할 수 있다.'**
  String get skillsLibraryFirebase1;

  /// No description provided for @skillsLibraryFirebase2.
  ///
  /// In ko, this message translates to:
  /// **'Firebase storage를 사용할 수 있다.'**
  String get skillsLibraryFirebase2;

  /// No description provided for @skillsLibraryStorage.
  ///
  /// In ko, this message translates to:
  /// **'앱에 필요한 데이터를 보안 필요 여부에 따라 구분하여 저장 및 사용할 수 있다.'**
  String get skillsLibraryStorage;

  /// No description provided for @skillsLibraryGraphQL.
  ///
  /// In ko, this message translates to:
  /// **'주어진 GraphQL 쿼리를 이용해 데이터를 요청할 수 있다.'**
  String get skillsLibraryGraphQL;

  /// No description provided for @skillsLibraryLogger.
  ///
  /// In ko, this message translates to:
  /// **'디버깅을 위한 로깅 작업을 할 수 있다.'**
  String get skillsLibraryLogger;

  /// No description provided for @skillsLibraryImagePicker.
  ///
  /// In ko, this message translates to:
  /// **'장치 내 갤러리의 이미지를 앱으로 가져올 수 있다.'**
  String get skillsLibraryImagePicker;

  /// No description provided for @skillsLibrarySyncfusionChart.
  ///
  /// In ko, this message translates to:
  /// **'원하는 형태의 차트를 구현할 수 있다.'**
  String get skillsLibrarySyncfusionChart;

  /// No description provided for @skillsLibraryFreezed.
  ///
  /// In ko, this message translates to:
  /// **'일반 및 제네릭 모델을 정의할 수 있다.'**
  String get skillsLibraryFreezed;

  /// No description provided for @skillsLibraryWidgetbook.
  ///
  /// In ko, this message translates to:
  /// **'배포 전 구현한 UI를 웹으로 확인할 수 있다.'**
  String get skillsLibraryWidgetbook;

  /// No description provided for @skillsLibraryGoRouter1.
  ///
  /// In ko, this message translates to:
  /// **'페이지 간 라우팅을 적용할 수 있다.'**
  String get skillsLibraryGoRouter1;

  /// No description provided for @skillsLibraryGoRouter2.
  ///
  /// In ko, this message translates to:
  /// **'데이터 상태에 따라 특정 페이지로 리다이렉팅 하도록 구현할 수 있다.'**
  String get skillsLibraryGoRouter2;

  /// No description provided for @skillsLibrarySkeletonizer.
  ///
  /// In ko, this message translates to:
  /// **'로딩 UI를 구현할 수 있다.'**
  String get skillsLibrarySkeletonizer;

  /// No description provided for @skillsLibraryLocalization1.
  ///
  /// In ko, this message translates to:
  /// **'언어 변경 기능을 구현할 수 있다.'**
  String get skillsLibraryLocalization1;

  /// No description provided for @skillsLibraryLocalization2.
  ///
  /// In ko, this message translates to:
  /// **'언어 변경 시 상태 관리를 이용해 앱 재시작 없이 즉시 변경할 수 있다.'**
  String get skillsLibraryLocalization2;

  /// No description provided for @skillsLibraryLocalization3.
  ///
  /// In ko, this message translates to:
  /// **'구글 스프레드 시트를 이용하여 국가 별 언어를 관리할 수 있다.'**
  String get skillsLibraryLocalization3;

  /// No description provided for @skillsLibrarySQFLite.
  ///
  /// In ko, this message translates to:
  /// **'로컬 데이터베이스 생성 및 조작을 할 수 있다.'**
  String get skillsLibrarySQFLite;

  /// No description provided for @skillsLibraryFlutterGen.
  ///
  /// In ko, this message translates to:
  /// **'앱에 필요한 애셋들을 자동 생성할 수 있다.'**
  String get skillsLibraryFlutterGen;

  /// No description provided for @skillsTechniquePagination1.
  ///
  /// In ko, this message translates to:
  /// **'무한 스크롤 페이지네이션을 구현할 수 있다.'**
  String get skillsTechniquePagination1;

  /// No description provided for @skillsTechniquePagination2.
  ///
  /// In ko, this message translates to:
  /// **'Throttle 기법을 적용하여 중복 요청을 방지할 수 있다.'**
  String get skillsTechniquePagination2;

  /// No description provided for @skillsTechniqueOptimisticResponse.
  ///
  /// In ko, this message translates to:
  /// **'통신에 문제가 없다는 가정하에 예상 응답 먼저 표시하여 UX를 향상 시킬 수 있다.'**
  String get skillsTechniqueOptimisticResponse;

  /// No description provided for @skillsTechniqueSorting.
  ///
  /// In ko, this message translates to:
  /// **'서버 부하를 줄이기 위해 앱 내에 정렬 로직을 적용할 수 있다.'**
  String get skillsTechniqueSorting;

  /// No description provided for @skillsTechniqueAnimation.
  ///
  /// In ko, this message translates to:
  /// **'원하는 애니메이션을 위젯에 적용할 수 있다.'**
  String get skillsTechniqueAnimation;

  /// No description provided for @skillsTechniqueSliver.
  ///
  /// In ko, this message translates to:
  /// **'Sliver Widget과 Box Widget을 결합한 NestedScrollView를 활용할 수 있다.'**
  String get skillsTechniqueSliver;

  /// No description provided for @skillsTechniqueReorder.
  ///
  /// In ko, this message translates to:
  /// **'ReorderableListView와 Dismissible 위젯들을 결합하여 구현할 수 있다.'**
  String get skillsTechniqueReorder;

  /// No description provided for @skillsTechniqueCodeGeneration.
  ///
  /// In ko, this message translates to:
  /// **'코드 자동 생성을 지원하는 라이브러리의 경우 해당 기능을 사용할 수 있다.'**
  String get skillsTechniqueCodeGeneration;

  /// No description provided for @skillsCoWork.
  ///
  /// In ko, this message translates to:
  /// **'경험해 본 협업 툴'**
  String get skillsCoWork;

  /// No description provided for @skillsIde.
  ///
  /// In ko, this message translates to:
  /// **'주로 사용하는 IDE'**
  String get skillsIde;

  /// No description provided for @skillsLanguage.
  ///
  /// In ko, this message translates to:
  /// **'사용 가능한 언어'**
  String get skillsLanguage;

  /// No description provided for @cvDirectionalTitle.
  ///
  /// In ko, this message translates to:
  /// **'디렉셔널'**
  String get cvDirectionalTitle;

  /// No description provided for @cvDirectionalSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'Flutter 개발자로 입사해 약 2년간 4개의 Flutter 프로젝트를 진행했습니다. 단순히 개발하는 것부터 내부테스트, IOS, AOS 심사 결과에 대응해 신규 기능 업데이트 및 반영하는 것까지 많은 경험을 할 수 있었습니다. 현재는 Flutter 프로젝트들이 종료되어 계열사 퀀팃의 정식 출시를 앞두고 있는 프로젝트인 머니터링의 웹 프론트엔드 개발을 지원하기 위해 파견 중에 있습니다. 해당 직무를 위해 TypeScript와 Next.js, 그리고 Recoil, Relay 등을 공부하여 여러 기능 개발에 참여하고 있습니다. 참여한 프로젝트는 아래와 같고 상세 내용은 타임라인의 프로젝트 명을 클릭하여 확인하실 수 있습니다.'**
  String get cvDirectionalSubtitle;

  /// No description provided for @cvDirectionalContent1.
  ///
  /// In ko, this message translates to:
  /// **'인베스타 - 암호화폐 정보 앱'**
  String get cvDirectionalContent1;

  /// No description provided for @cvDirectionalContent2.
  ///
  /// In ko, this message translates to:
  /// **'SBL APP - 주식 대차거래 중계 앱'**
  String get cvDirectionalContent2;

  /// No description provided for @cvDirectionalContent3.
  ///
  /// In ko, this message translates to:
  /// **'인베스타 백오피스 - 커뮤니티 관리 툴'**
  String get cvDirectionalContent3;

  /// No description provided for @cvDirectionalContent4.
  ///
  /// In ko, this message translates to:
  /// **'불개미 - 주식 공매도 정보 앱'**
  String get cvDirectionalContent4;

  /// No description provided for @cvDirectionalContent5.
  ///
  /// In ko, this message translates to:
  /// **'머니터링 - 투자 정보 커뮤니티'**
  String get cvDirectionalContent5;

  /// No description provided for @cvInvestarTitle.
  ///
  /// In ko, this message translates to:
  /// **'인베스타'**
  String get cvInvestarTitle;

  /// No description provided for @cvInvestarSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'입사 당시 라이브 서비스 중이었습니다. 새로운 페이지 개발 및 유지보수를 진행했으며 전체 개발 비중의 약 60% 기여했습니다.'**
  String get cvInvestarSubtitle;

  /// No description provided for @cvInvestarDailyCoinSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'일일코인분석 페이지 개발'**
  String get cvInvestarDailyCoinSubtitle;

  /// No description provided for @cvInvestarDailyCoinContent.
  ///
  /// In ko, this message translates to:
  /// **'1일 1회 조회 가능한 화면으로 접근 시 로딩 화면과 함께 프로바이더에 데이터를 캐싱하여 데이터의 상태에 따라 재요청 혹은 조회 결과 화면으로 이동할 수 있습니다.'**
  String get cvInvestarDailyCoinContent;

  /// No description provided for @cvInvestarRisingScoreSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'놓치면 후회할 30분 페이지 개발'**
  String get cvInvestarRisingScoreSubtitle;

  /// No description provided for @cvInvestarRisingScoreContent.
  ///
  /// In ko, this message translates to:
  /// **'30분마다 상승 가능성이 높은 화폐들의 목록을 갱신하는 페이지로 서버에서 현재 데이터가 유효한 시간을 받아와 타이머로 1초 씩 시간을 줄입니다. 남은 시간이 0초에 도달했을 때 현재 데이터는 만료되었다는 화면을 표시하고 데이터 유효 시간을 매초 요청합니다. 요청한 유효 시간이 갱신되면 새로운 데이터를 받아와 프로바이더 캐시에 저장합니다.'**
  String get cvInvestarRisingScoreContent;

  /// No description provided for @cvInvestarCarouselSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'홈 화면 캐로우셀 배너 개발'**
  String get cvInvestarCarouselSubtitle;

  /// No description provided for @cvInvestarCarouselContent.
  ///
  /// In ko, this message translates to:
  /// **'홈 화면 빌드 시점에 캐로우셀에 관련된 페이지들의 프로바이더 생성 및 데이터를 캐시에 저장합니다. 특정 페이지에 해당하는 캐시의 데이터가 없을 경우 해당 배너를 렌더링하지 않습니다.'**
  String get cvInvestarCarouselContent;

  /// No description provided for @cvInvestarWhaleSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'정보 탭 - 고래 페이지 개발'**
  String get cvInvestarWhaleSubtitle;

  /// No description provided for @cvInvestarWhaleContent.
  ///
  /// In ko, this message translates to:
  /// **'주요 암호 화폐 온체인 데이터를 보여주는 화면입니다. 각 주요 암호 화폐 카드를 터치할 경우 차트를 포함한 상세화면으로 이동합니다.  페이지 내 배너를 통해 이동할 수 있는 고래가 많이 산 코인 페이지의 코인 검색 기능도 개발하였습니다.'**
  String get cvInvestarWhaleContent;

  /// No description provided for @cvInvestarFavoriteSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'관심 탭 - 관심코인 페이지 개선 및 개발'**
  String get cvInvestarFavoriteSubtitle;

  /// No description provided for @cvInvestarFavoriteContent.
  ///
  /// In ko, this message translates to:
  /// **'기존에는 관심 표시한 순서대로 코인만 보여주는 화면이었으나 추후 개선을 통해 정렬 로직을 추가하였습니다. 관심 코인의 갯수는 일반적으로 많지 않으므로 UX를 위해 한 번에 모든 데이터를 프로바이더에 캐싱하여 프론트 내 로직으로 정렬하도록 개발했습니다.'**
  String get cvInvestarFavoriteContent;

  /// No description provided for @cvInvestarCommunitySubtitle.
  ///
  /// In ko, this message translates to:
  /// **'커뮤니티 탭 - 톡톡 페이지 개선 및 개발'**
  String get cvInvestarCommunitySubtitle;

  /// No description provided for @cvInvestarCommunityContent.
  ///
  /// In ko, this message translates to:
  /// **'글자만 작성할 수 있었던 기존 기능에 이미지 작성도 가능하도록 개선했습니다. 추가적으로 IOS 심사 통과 및 커뮤니티 관리를 위해 백오피스도 함께 개발했습니다.'**
  String get cvInvestarCommunityContent;

  /// No description provided for @cvInvestarMySubtitle.
  ///
  /// In ko, this message translates to:
  /// **'마이 탭 - 전체 개선 및 개발'**
  String get cvInvestarMySubtitle;

  /// No description provided for @cvInvestarMyContent.
  ///
  /// In ko, this message translates to:
  /// **'파편화 되어 있던 마이 페이지 관련 GraphQL 쿼리를 하나로 통합하여 일관성 있게 데이터를 관리할 수 있도록 개선했습니다. 기존에 존재하지 않았던 나의 정보를 시각적으로 확인할 수 있는 신규 적응형 UI를 개발했습니다.'**
  String get cvInvestarMyContent;

  /// No description provided for @cvInvestarSearchSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'코인 검색 페이지 개선 및 개발'**
  String get cvInvestarSearchSubtitle;

  /// No description provided for @cvInvestarSearchContent.
  ///
  /// In ko, this message translates to:
  /// **'기존에는 검색 기능만 존재했으나 추후 개선을 통해 UI 수정 및 정렬 기능을 추가했습니다.'**
  String get cvInvestarSearchContent;

  /// No description provided for @cvInvestarCommonSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'공통'**
  String get cvInvestarCommonSubtitle;

  /// No description provided for @cvInvestarCommonContent1.
  ///
  /// In ko, this message translates to:
  /// **'신규 적응형 UI를 적용했습니다.'**
  String get cvInvestarCommonContent1;

  /// No description provided for @cvInvestarCommonContent2.
  ///
  /// In ko, this message translates to:
  /// **'글로벌 출시를 위해 한/영 로컬라이제이션을 적용했습니다.'**
  String get cvInvestarCommonContent2;

  /// No description provided for @cvInvestarCommonContent3.
  ///
  /// In ko, this message translates to:
  /// **'글로벌 출시를 위해 전체 UI 수정을 진행했습니다.'**
  String get cvInvestarCommonContent3;

  /// No description provided for @cvInvestarCommonContent4.
  ///
  /// In ko, this message translates to:
  /// **'Json 직렬화, 공통 위젯 등 손으로 직접 작성하던 것들을 자동화 및 일반화 하였습니다.'**
  String get cvInvestarCommonContent4;

  /// No description provided for @cvSblTitle.
  ///
  /// In ko, this message translates to:
  /// **'SBL APP'**
  String get cvSblTitle;

  /// No description provided for @cvSblSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'이전 앱에서는 사용해보지 못한 라이브러리와 기술들을 적용하려고 노력했습니다. 전체 개발 비중의 약 90% 기여했습니다.'**
  String get cvSblSubtitle;

  /// No description provided for @cvSblContent1.
  ///
  /// In ko, this message translates to:
  /// **'Riverpod, Retrofit, Go Router 등 최신 Flutter 라이브러리 사용했습니다.'**
  String get cvSblContent1;

  /// No description provided for @cvSblContent2.
  ///
  /// In ko, this message translates to:
  /// **'코드 제너레이션을 지원하는 라이브러리의 경우 적극 활용했습니다.'**
  String get cvSblContent2;

  /// No description provided for @cvSblContent3.
  ///
  /// In ko, this message translates to:
  /// **'MVVM 아키텍쳐 패턴을 적용했습니다.'**
  String get cvSblContent3;

  /// No description provided for @cvSblContent4.
  ///
  /// In ko, this message translates to:
  /// **'로그인 상태에 따른 리다이렉션 기능을 개발했습니다.'**
  String get cvSblContent4;

  /// No description provided for @cvSblContent5.
  ///
  /// In ko, this message translates to:
  /// **'Dio 라이브러리의 Custom Interceptor 기능을 활용하여 통신 시 요청, 응답, 에러가 발생할 경우 먼저 캐치하여 핸들링할 수 있는 기능을 개발했습니다.'**
  String get cvSblContent5;

  /// No description provided for @cvSblContent6.
  ///
  /// In ko, this message translates to:
  /// **'Riverpod을 이용해 상태관리를 하여 상황에 맞게 인스턴스를 유지 혹은 처리하도록 개발했습니다.'**
  String get cvSblContent6;

  /// No description provided for @cvSblContent7.
  ///
  /// In ko, this message translates to:
  /// **'Freezed를 통해 generic model을 정의하고 이를 이용해 무한 스크롤 페이지네이션이 필요한 화면들을 일반화 했습니다.'**
  String get cvSblContent7;

  /// No description provided for @cvSblContent8.
  ///
  /// In ko, this message translates to:
  /// **'Throttle, Debouncer 기법들을 적용하여 불필요한 중복요청을 방지하도록 구현했습니다.'**
  String get cvSblContent8;

  /// No description provided for @cvInvestarBackOfficeTitle.
  ///
  /// In ko, this message translates to:
  /// **'인베스타 백오피스'**
  String get cvInvestarBackOfficeTitle;

  /// No description provided for @cvInvestarBackOfficeSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'SBL APP의 기술들을 베이스로 하여 Flutter web으로 동작하는 백오피스를 개발했습니다. 100% 기여했습니다.'**
  String get cvInvestarBackOfficeSubtitle;

  /// No description provided for @cvInvestarBackOfficeContent.
  ///
  /// In ko, this message translates to:
  /// **'IOS 심사 통과를 위해 커뮤니티 게시글을 관리하는 기능에 집중하여 개발했습니다.'**
  String get cvInvestarBackOfficeContent;

  /// No description provided for @cvFireAntTitle.
  ///
  /// In ko, this message translates to:
  /// **'불개미'**
  String get cvFireAntTitle;

  /// No description provided for @cvFireAntSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'SBL APP 플랫폼을 베이스로하여 개발했습니다. 기존 구현 페이지들은 공매도 탭으로 이동시키고 새로운 기능의 앱으로 전환했습니다. 100% 기여했습니다.'**
  String get cvFireAntSubtitle;

  /// No description provided for @cvFireAntContent1.
  ///
  /// In ko, this message translates to:
  /// **'Figma에 정의된 사양에 맞게 일반화한 공통 위젯을 개발했습니다. 특히 List 컴포넌트들을 leading, content, trailing 형태로 세분화하여 일반화 했습니다.'**
  String get cvFireAntContent1;

  /// No description provided for @cvFireAntContent2.
  ///
  /// In ko, this message translates to:
  /// **'아이콘, 리스트 타일 등 터치 가능한 영역 터치 시 애니메이션 효과를 주기 위해 래핑 위젯 CustomAnimatedInkWell을 개발했습니다.'**
  String get cvFireAntContent2;

  /// No description provided for @cvFireAntContent3.
  ///
  /// In ko, this message translates to:
  /// **'NestedScrollView를 이용해 스크롤 시 바텀내비게이션바와 앱바가 숨겨지는 기능을 개발했습니다.'**
  String get cvFireAntContent3;

  /// No description provided for @cvFireAntContent4.
  ///
  /// In ko, this message translates to:
  /// **'ReorderableListView와 Dismissible을 결합해 밀었을 때 리스트 삭제와 길게 눌렀을 때 리스트 순서 변경이 한 화면에서 동시에 가능하도록 개발했습니다.'**
  String get cvFireAntContent4;

  /// No description provided for @cvFireAntContent5.
  ///
  /// In ko, this message translates to:
  /// **'Local Database 라이브러리를 적용하여 앱 구동시 공매도 가능한 전체 종목을 앱에 저장하여 사용할 수 있도록 개발했습니다.'**
  String get cvFireAntContent5;

  /// No description provided for @cvFireAntContent6.
  ///
  /// In ko, this message translates to:
  /// **'테마 모드에 Riverpod을 적용하여 앱 재실행 없이 라이트모드, 다크모드 전환이 가능하도록 개발했습니다.'**
  String get cvFireAntContent6;

  /// No description provided for @cvFireAntContent7.
  ///
  /// In ko, this message translates to:
  /// **'구글 스프레드 시트와 Flutter localization 라이브러리를 활용하여 앱 내 언어를 일괄 관리 및 언어 변경 시 앱 종료 없이 전환 가능하도록 개발했습니다.'**
  String get cvFireAntContent7;

  /// No description provided for @cvFireAntContent8.
  ///
  /// In ko, this message translates to:
  /// **'AOS 뒤로가기 버튼과 같이 모든 페이지에 필요한 기능을 일괄적으로 구현할 수 있도록 DefaultLayout 위젯을 개발했습니다.'**
  String get cvFireAntContent8;

  /// No description provided for @cvFireAntContent9.
  ///
  /// In ko, this message translates to:
  /// **'종목 검색 화면에서 종목을 검색할 때 매치되는 텍스트에 맞게 하이라이트가 나타나는 기능을 개발했습니다.'**
  String get cvFireAntContent9;

  /// No description provided for @cvFireAntContent10.
  ///
  /// In ko, this message translates to:
  /// **'앱 내에서 사용하는 라인차트를 표현하기 위해 차트 위젯 일반화 했습니다.'**
  String get cvFireAntContent10;

  /// No description provided for @cvFireAntContent11.
  ///
  /// In ko, this message translates to:
  /// **'API 요청, 응답, 에러 발생 시 쉽게 확인할 수 있도록 로깅작업을 했습니다.'**
  String get cvFireAntContent11;

  /// No description provided for @cvFireAntContent12.
  ///
  /// In ko, this message translates to:
  /// **'앱 내 사용 이미지 애셋의 코드를 자동 생성할 수 있도록 개발했습니다.'**
  String get cvFireAntContent12;

  /// No description provided for @cvFireAntContent13.
  ///
  /// In ko, this message translates to:
  /// **'데이터 요청과 관련된 위젯의 경우 로딩, 에러, 빈케이스, 정상케이스를 명시적으로 정의하도록 개발했습니다.'**
  String get cvFireAntContent13;

  /// No description provided for @cvFireAntContent14.
  ///
  /// In ko, this message translates to:
  /// **'Firebase Push notification과 Local notification을 적용했습니다.'**
  String get cvFireAntContent14;

  /// No description provided for @cvFireAntContent15.
  ///
  /// In ko, this message translates to:
  /// **'Widgetbook을 적용하여 앱 테스트 배포 전 웹에서 먼저 확인할 수 있도록 개발했습니다.'**
  String get cvFireAntContent15;

  /// No description provided for @cvFireAntContent16.
  ///
  /// In ko, this message translates to:
  /// **'말풍선 UI를 표현하기 위해 Flutter 내 CustomClipper 기능을 이용해 직접 좌표를 계산하여 개발했습니다.'**
  String get cvFireAntContent16;

  /// No description provided for @cvHectoFinancialTitle.
  ///
  /// In ko, this message translates to:
  /// **'헥토 파이낸셜'**
  String get cvHectoFinancialTitle;

  /// No description provided for @cvHectoFinancialSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'백엔드 개발자로 입사해 약 9개월간 지자체 세금 가상계좌 납부 서비스 유지보수 업무를 담당했습니다. 약 70%의 지자체가 이 솔루션을 이용했습니다. 해당 솔루션이 설치된 서버가 지자체 내부망에 있었기 때문에 보안점검, 로그정리, DB 인덱스 재생성, 노후 서버 교체 등의 작업을 위해 지자체 출장을 주기적으로 다녔습니다. 또한 지방세 납부가 몰리는 시기의 경우 지자체의 원활한 수납처리를 위해 지원 작업도 병행했습니다. 뿐만아니라 세입세출외현금 수납 솔루션의 경우 새로운 사업으로써 신규 서버 도입, 설치 및 교육도 진행했습니다.'**
  String get cvHectoFinancialSubtitle;

  /// No description provided for @cvHectoFinancialContent1.
  ///
  /// In ko, this message translates to:
  /// **'지자체 세금 가상계좌 납부 서비스 개발 및 유지보수를 했습니다.'**
  String get cvHectoFinancialContent1;

  /// No description provided for @cvHectoFinancialContent2.
  ///
  /// In ko, this message translates to:
  /// **'지자체에 납품한 가상계좌 서버의 보안 점검 및 노후 서버 교체작업을 했습니다.'**
  String get cvHectoFinancialContent2;

  /// No description provided for @cvHectoFinancialContent3.
  ///
  /// In ko, this message translates to:
  /// **'지자체에 납품한 가상계좌 서버에 신규 서비스 설치 및 공무원 교육을 진행했습니다.'**
  String get cvHectoFinancialContent3;

  /// No description provided for @cvHectoFinancialContent4.
  ///
  /// In ko, this message translates to:
  /// **'가상계좌 납부 서비스 관련 전화 CS를 응대했습니다.'**
  String get cvHectoFinancialContent4;

  /// No description provided for @cvHectoFinancialContent5.
  ///
  /// In ko, this message translates to:
  /// **'약 10년 동안의 히스토리를 정리하여 통합 업무 가이드 문서를 컨플루언스로 작성했습니다.'**
  String get cvHectoFinancialContent5;

  /// No description provided for @cvWoowaTitle.
  ///
  /// In ko, this message translates to:
  /// **'우아한 테크코스 프리코스(코틀린)'**
  String get cvWoowaTitle;

  /// No description provided for @cvWoowaSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'코틀린에 익숙해지기 위한 과정으로 4개의 토이 프로젝트를 특정 조건(메서드 줄 수, 메서드 파라미터 수 등)에 맞춰 구현합니다. 추가적으로 구현한 메서드에 대한 테스트 코드를 작성하여 해당 메서드가 원하는 결과값을 도출하는지 확인합니다. 해당 과정은 직접적인 교육이 목적이 아니기 때문에 가이드라인만 제시하고 각 토이 프로젝트의 최종 테스트 코드만 통과하면 구현 방식에는 제한이 없습니다. 따라서 저는 해당 가이드라인을 참고하여 TDD를 연습하는 것에 집중했습니다.'**
  String get cvWoowaSubtitle;

  /// No description provided for @cvItAcademyTitle.
  ///
  /// In ko, this message translates to:
  /// **'자바 ORM 기반 응용SW 개발자'**
  String get cvItAcademyTitle;

  /// No description provided for @cvItAcademySubtitle.
  ///
  /// In ko, this message translates to:
  /// **'대학원 중퇴 후 앞으로 무엇을 할지 고민을 했습니다. 대학교 재학 당시 재밌게 배웠던 프로그래밍 언어에 제가 알던 임베디드 이외에 웹 개발이라는 분야가 있다는 것을 알게되어 약 2개월 간의 리서치 후 백엔드 개발자를 목표로  JAVA와 Spring framwork에 대해 배우는 수업 중 가장 빠르게 시작하는 과정에 등록했습니다. 해당 과정에서 웹 개발에 필요한 많은 기초 지식을 배웠지만 최종 빌드 및 배포에 대해선 배우지 못했습니다. 그래서 개인적으로 공부하여 라즈베리파이, 우분투 서버, 톰캣, 젠킨스로 빌드 및 배포 서버를 구성하여 실제 배포까지 진행했고 이를 공유기의 포트포워딩과 DDNS를 통해 실제 사이트처럼 도메인을 통해 외부에서 접근할 수 있는 것까지 완성했습니다.'**
  String get cvItAcademySubtitle;

  /// No description provided for @cvItAcademyContent1.
  ///
  /// In ko, this message translates to:
  /// **'수업에서 배운 것: Java, Spring Framework, Sql, Javascript, JSP, jQuery'**
  String get cvItAcademyContent1;

  /// No description provided for @cvItAcademyContent2.
  ///
  /// In ko, this message translates to:
  /// **'개인적으로 학습한 것: Build & Deployment, Version Control (Git), Data Structure, Algorithms'**
  String get cvItAcademyContent2;

  /// No description provided for @cvGraduateSchoolTitle.
  ///
  /// In ko, this message translates to:
  /// **'고려대학교 일반대학원 - 메카트로닉스 전공 (석사 중퇴)'**
  String get cvGraduateSchoolTitle;

  /// No description provided for @cvGraduateSchoolSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'학점: 3.83/4.5'**
  String get cvGraduateSchoolSubtitle;

  /// No description provided for @cvGraduateSchoolContent1.
  ///
  /// In ko, this message translates to:
  /// **'주요 수강 과목: 응용수학, 제어공학특론, 확률시스템공학연구 등'**
  String get cvGraduateSchoolContent1;

  /// No description provided for @cvGraduateSchoolContent2.
  ///
  /// In ko, this message translates to:
  /// **'주요 연구 과제: 동물 뼈 내부의 미세한 공극에서 유체가 흐를 경우 유체의 상호작용을 시뮬레이션, 인간 뼈에 미세 마이크로 컴퓨터를 이식해 골다공증을 치료할 수 있는가에 관한 연구'**
  String get cvGraduateSchoolContent2;

  /// No description provided for @cvUniversityTitle.
  ///
  /// In ko, this message translates to:
  /// **'고려대학교 - 제어계측공학 전공 (학사 졸업)'**
  String get cvUniversityTitle;

  /// No description provided for @cvUniversitySubtitle.
  ///
  /// In ko, this message translates to:
  /// **'학점: 3.5/4.5 (전공학점: 3.81/4.5)'**
  String get cvUniversitySubtitle;

  /// No description provided for @cvUniversityContent1.
  ///
  /// In ko, this message translates to:
  /// **'주요 수강 과목: 메카트로닉스, 고급임베디드시스템활용, 유공압제어, 전자회로, 자동제어, 마이크로프로세서, 동역학, 생체공학개론, 컴퓨터언어, 고체역학, 열유체역학, 공업수학'**
  String get cvUniversityContent1;

  /// No description provided for @cvUniversityContent2.
  ///
  /// In ko, this message translates to:
  /// **'졸업 작품: Unity를 이용한 게임 개발 및 대응하는 컨트롤러 제작'**
  String get cvUniversityContent2;

  /// No description provided for @cvMoneytoringTitle.
  ///
  /// In ko, this message translates to:
  /// **'머니터링'**
  String get cvMoneytoringTitle;

  /// No description provided for @cvMoneytoringSubtitle.
  ///
  /// In ko, this message translates to:
  /// **'계열사 퀀팃의 신규 프로젝트 머니터링을 지원하기 위해 약 4개월 간 파견 중에 있습니다. 해당 프로젝트는 Next.js를 사용하는 프로젝트로 이를 위해 TypeScript, Next.js, Recoil, Relay 등을 공부하여 현재 여러 기능 및 페이지를 개발하고 있습니다.'**
  String get cvMoneytoringSubtitle;

  /// No description provided for @cvMoneytoringContent1.
  ///
  /// In ko, this message translates to:
  /// **'회원가입 후 나타나는 온보딩 화면 개선 버전을 개발했습니다. 개선 버전에 맞게 기존 API를 신규 API로 교체하고 바뀐 데이터 타입에 맞게 구조를 변경했습니다. 기존에는 온보딩 각 스텝 마다 데이터를 처리했기 때문에 useState로 각 스텝 단위에서 상태를 관리했지만 개선 버전에서는 모든 스텝을 연결해 마지막 스텝에서 데이터를 처리하도록 바뀌어서 Recoil을 이용해 상태관리를 통합해서 할 수 있도록 수정했습니다.'**
  String get cvMoneytoringContent1;

  /// No description provided for @cvMoneytoringContent2.
  ///
  /// In ko, this message translates to:
  /// **'종목 상세 페이지의 매매동향 모달을 개발했습니다. 해당 모달은 기관, 외국인, 개인의 상장 이후 모든 일일 거래량 및 거래 대금을 보여주는 모달입니다. Relay를 이용해 세로 무한스크롤을 적용했고 가로 스크롤 시 날짜 column 옆에 음영 효과가 나타나도록 했습니다.'**
  String get cvMoneytoringContent2;

  /// No description provided for @cvMoneytoringContent3.
  ///
  /// In ko, this message translates to:
  /// **'밸류체인, 알림 관리자 화면을 개발했습니다. 해당 기능들은 베트남 외주팀과 협업하여 작업했습니다.'**
  String get cvMoneytoringContent3;

  /// No description provided for @cvMoneytoringContent4.
  ///
  /// In ko, this message translates to:
  /// **'푸터 등 간단한 UI 개발 및 베트남 외주에 필요한 특정 라이브러리들을 선정하는 작업을 했습니다.'**
  String get cvMoneytoringContent4;
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
