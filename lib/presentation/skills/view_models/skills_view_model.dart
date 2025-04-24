import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resume/core/extensions/locale_extension.dart';
import 'package:resume/domain/entities/skills_model.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/core/provider/app_localizations_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'skills_view_model.freezed.dart';
part 'skills_view_model.g.dart';

@freezed
abstract class SkillsState with _$SkillsState {
  const factory SkillsState({
    required List<String> categories,
    @Default(0) int selectedCategoryIndex,
    @Default([]) List<SkillItem> programmingLanguages,
    @Default([]) List<SkillItem> libraries,
    @Default([]) List<SkillItem> techniques,
    @Default([]) List<SkillItem> tools,
  }) = _SkillsState;
}

@riverpod
class SkillsViewModel extends _$SkillsViewModel {
  @override
  SkillsState build() {
    final locale = ref.watch(appLocalizationsStateProvider);

    final categories = [
      'Programming Language',
      'Flutter Library',
      'Technique',
      'Tools'
    ];

    final programmingLanguages = _getProgrammingLanguages(locale);
    final libraries = _getLibraries(locale);
    final techniques = _getTechniques(locale);
    final tools = _getTools(locale);

    return SkillsState(
      categories: categories,
      selectedCategoryIndex: 0,
      programmingLanguages: programmingLanguages,
      libraries: libraries,
      techniques: techniques,
      tools: tools,
    );
  }

  void selectCategory(int index) {
    if (index >= 0 && index < state.categories.length) {
      state = state.copyWith(selectedCategoryIndex: index);
    }
  }

  List<SkillItem> _getProgrammingLanguages(AppLocalizations locale) {
    return [
      SkillItem(
        name: 'Dart',
        level: 90,
        description: locale.skillsLanguageLevel5,
        detailedDescriptions: locale.dartDetailedDescriptions,
      ),
      SkillItem(
        name: 'TypeScript',
        level: 80,
        description: locale.skillsLanguageLevel5,
        detailedDescriptions: locale.typeScriptDetailedDescriptions,
      ),
      SkillItem(
        name: 'Kotlin',
        level: 70,
        description: locale.skillsLanguageLevel4,
        detailedDescriptions: locale.kotlinDetailedDescriptions,
      ),
      SkillItem(
        name: 'Java',
        level: 60,
        description: locale.skillsLanguageLevel4,
        detailedDescriptions: locale.javaDetailedDescriptions,
      ),
      SkillItem(
        name: 'C',
        level: 50,
        description: locale.skillsLanguageLevel3,
        detailedDescriptions: locale.cDetailedDescriptions,
      ),
      SkillItem(
        name: 'SQL',
        level: 30,
        description: locale.skillsLanguageLevel2,
        detailedDescriptions: locale.sqlDetailedDescriptions,
      ),
      SkillItem(
        name: 'C++',
        level: 20,
        description: locale.skillsLanguageLevel2,
        detailedDescriptions: locale.cppDetailedDescriptions,
      ),
      SkillItem(
        name: 'Python',
        level: 20,
        description: locale.skillsLanguageLevel1,
        detailedDescriptions: locale.pythonDetailedDescriptions,
      ),
    ];
  }

  List<SkillItem> _getLibraries(AppLocalizations locale) {
    return [
      SkillItem(
        name: 'Riverpod',
        description: locale.skillsLibraryRiverpodDescription,
        detailedDescriptions: locale.riverpodDetailedDescriptions,
      ),
      SkillItem(
        name: 'Retrofit',
        description: locale.skillsLibraryRetrofitDescription,
        detailedDescriptions: locale.retrofitDetailedDescriptions,
      ),
      SkillItem(
        name: 'Dio',
        description: locale.skillsLibraryDioDescription,
        detailedDescriptions: locale.dioDetailedDescriptions,
      ),
      SkillItem(
        name: 'Firebase',
        description: locale.skillsLibraryFirebaseDescription,
        detailedDescriptions: locale.firebaseDetailedDescriptions,
      ),
      SkillItem(
        name: 'Shared Preference & Secure Storage',
        description: locale.skillsLibraryStorageDescription,
        detailedDescriptions: locale.storageDetailedDescriptions,
      ),
      SkillItem(
        name: 'GraphQL',
        description: locale.skillsLibraryGraphQLDescription,
        detailedDescriptions: locale.graphQLDetailedDescriptions,
      ),
      SkillItem(
        name: 'Logger',
        description: locale.skillsLibraryLoggerDescription,
        detailedDescriptions: locale.loggerDetailedDescriptions,
      ),
      SkillItem(
        name: 'Image Picker',
        description: locale.skillsLibraryImagePickerDescription,
        detailedDescriptions: locale.imagePickerDetailedDescriptions,
      ),
      SkillItem(
        name: 'Syncfusion Chart',
        description: locale.skillsLibrarySyncfusionChartDescription,
        detailedDescriptions: locale.syncfusionChartDetailedDescriptions,
      ),
      SkillItem(
        name: 'Freezed',
        description: locale.skillsLibraryFreezedDescription,
        detailedDescriptions: locale.freezedDetailedDescriptions,
      ),
      SkillItem(
        name: 'Widgetbook',
        description: locale.skillsLibraryWidgetbookDescription,
        detailedDescriptions: locale.widgetbookDetailedDescriptions,
      ),
      SkillItem(
        name: 'Go Router',
        description: locale.skillsLibraryGoRouterDescription,
        detailedDescriptions: locale.goRouterDetailedDescriptions,
      ),
      SkillItem(
        name: 'Skeletonizer',
        description: locale.skillsLibrarySkeletonizerDescription,
        detailedDescriptions: locale.skeletonizerDetailedDescriptions,
      ),
      SkillItem(
        name: 'Localization',
        description: locale.skillsLibraryLocalizationDescription,
        detailedDescriptions: locale.localizationDetailedDescriptions,
      ),
      SkillItem(
        name: 'SQFLite',
        description: locale.skillsLibrarySQFLiteDescription,
        detailedDescriptions: locale.sqfliteDetailedDescriptions,
      ),
      SkillItem(
        name: 'Flutter Gen',
        description: locale.skillsLibraryFlutterGenDescription,
        detailedDescriptions: locale.flutterGenDetailedDescriptions,
      ),
    ];
  }

  List<SkillItem> _getTechniques(AppLocalizations locale) {
    return [
      SkillItem(
        name: 'Pagination',
        description: locale.skillsTechniquePaginationDescription,
        detailedDescriptions: locale.paginationDetailedDescriptions,
      ),
      SkillItem(
        name: 'Infinite Scroll',
        description: locale.skillsTechniqueInfiniteScrollDescription,
        detailedDescriptions: locale.infiniteScrollDetailedDescriptions,
      ),
      SkillItem(
        name: 'Optimistic Response',
        description: locale.skillsTechniqueOptimisticResponseDescription,
        detailedDescriptions: locale.optimisticResponseDetailedDescriptions,
      ),
      SkillItem(
        name: 'Throttling & Debounce',
        description: locale.skillsTechniqueThrottlingDebounceDescription,
        detailedDescriptions: locale.throttlingDebounceDetailedDescriptions,
      ),
      SkillItem(
        name: 'Intersection Observer',
        description: locale.skillsTechniqueIntersectionObserverDescription,
        detailedDescriptions: locale.intersectionObserverDetailedDescriptions,
      ),
      SkillItem(
        name: 'Sorting',
        description: locale.skillsTechniqueSortingDescription,
        detailedDescriptions: locale.sortingDetailedDescriptions,
      ),
      SkillItem(
        name: 'Animation',
        description: locale.skillsTechniqueAnimationDescription,
        detailedDescriptions: locale.animationDetailedDescriptions,
      ),
      SkillItem(
        name: 'Code Generation',
        description: locale.skillsTechniqueCodeGenerationDescription,
        detailedDescriptions: locale.codeGenerationDetailedDescriptions,
      ),
      SkillItem(
        name: 'Sliver Widgets & NestedScrollView',
        description: locale.skillsTechniqueSliverDescription,
        detailedDescriptions: locale.sliverDetailedDescriptions,
      ),
      SkillItem(
        name: 'ReorderableListView & Dissmisible',
        description: locale.skillsTechniqueReorderDescription,
        detailedDescriptions: locale.reorderDetailedDescriptions,
      ),
      SkillItem(
        name: 'Unit Test',
        description: locale.skillsTechniqueUnitTestDescription,
        detailedDescriptions: locale.unitTestDetailedDescriptions,
      ),
    ];
  }

  List<SkillItem> _getTools(AppLocalizations locale) {
    return [
      SkillItem(
        name: 'Slack',
        description: locale.skillsToolSlackDescription,
      ),
      SkillItem(
        name: 'Figma',
        description: locale.skillsToolFigmaDescription,
      ),
      SkillItem(
        name: 'Notion',
        description: locale.skillsToolNotionDescription,
      ),
      SkillItem(
        name: 'Jira',
        description: locale.skillsToolJiraDescription,
      ),
      SkillItem(
        name: 'Confluence',
        description: locale.skillsToolConfluenceDescription,
      ),
      SkillItem(
        name: 'Google Sheet',
        description: locale.skillsToolGoogleSheetDescription,
      ),
      SkillItem(
        name: 'IntelliJ IDEA',
        description: locale.skillsToolIntelliJDescription,
      ),
      SkillItem(
        name: 'WebStorm',
        description: locale.skillsToolWebStormDescription,
      ),
      SkillItem(
        name: 'Android Studio',
        description: locale.skillsToolAndroidStudioDescription,
      ),
      SkillItem(
        name: 'Visual Studio Code',
        description: locale.skillsToolVisualStudioCodeDescription,
      ),
      SkillItem(
        name: 'Git',
        description: locale.skillsToolGitDescription,
      ),
      SkillItem(
        name: 'SVN',
        description: locale.skillsToolSvnDescription,
      ),
      const SkillItem(
        name: 'Korean(Native)',
      ),
      const SkillItem(
        name: 'English(Proficient)',
      ),
    ];
  }
}
