import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class SkillsScreen extends StatelessWidget {
  static const String path = '/skills';
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(200),
        // Language
        Text(
          context.locale!.skillsLanguageLevel5,
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          'Dart',
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          context.locale!.skillsLanguageLevel4,
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          'Kotlin, Java',
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          context.locale!.skillsLanguageLevel3,
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          'TypeScript, C',
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          context.locale!.skillsLanguageLevel2,
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          'SQL, C++',
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          context.locale!.skillsLanguageLevel1,
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
        Text(
          'Python',
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),

        // Library
        Text(
          'Riverpod',
        ),
        Text(
          context.locale!.skillsLibraryRiverpod1,
        ),
        Text(
          context.locale!.skillsLibraryRiverpod2,
        ),
        Text(
          'Retrofit',
        ),
        Text(
          context.locale!.skillsLibraryRetrofit,
        ),
        Text(
          'Dio',
        ),
        Text(
          context.locale!.skillsLibraryDio,
        ),
        Text(
          'Firebase',
        ),
        Text(
          context.locale!.skillsLibraryFirebase1,
        ),
        Text(
          context.locale!.skillsLibraryFirebase2,
        ),
        Text(
          'Shared Preference & Secure Storage',
        ),
        Text(
          context.locale!.skillsLibraryStorage,
        ),
        Text(
          'GraphQL',
        ),
        Text(
          context.locale!.skillsLibraryGraphQL,
        ),
        Text(
          'Logger',
        ),
        Text(
          context.locale!.skillsLibraryLogger,
        ),
        Text(
          'Image Picker',
        ),
        Text(
          context.locale!.skillsLibraryImagePicker,
        ),
        Text(
          'Syncfusion Chart',
        ),
        Text(
          context.locale!.skillsLibrarySyncfusionChart,
        ),
        Text(
          'Freezed',
        ),
        Text(
          context.locale!.skillsLibraryFreezed,
        ),
        Text(
          'Widgetbook',
        ),
        Text(
          context.locale!.skillsLibraryWidgetbook,
        ),
        Text(
          'Go Router',
        ),
        Text(
          context.locale!.skillsLibraryGoRouter1,
        ),
        Text(
          context.locale!.skillsLibraryGoRouter2,
        ),
        Text(
          'Skeletonizer',
        ),
        Text(
          context.locale!.skillsLibrarySkeletonizer,
        ),
        Text(
          'Localization',
        ),
        Text(
          context.locale!.skillsLibraryLocalization1,
        ),
        Text(
          context.locale!.skillsLibraryLocalization2,
        ),
        Text(
          context.locale!.skillsLibraryLocalization3,
        ),
        Text(
          'SQFLite',
        ),
        Text(
          context.locale!.skillsLibrarySQFLite,
        ),
        Text(
          'Flutter Gen',
        ),
        Text(
          context.locale!.skillsLibraryFlutterGen,
        ),

        // Technique
        Text('Pagination'),
        Text(
          context.locale!.skillsTechniquePagination1,
        ),
        Text(
          context.locale!.skillsTechniquePagination2,
        ),
        Text(
          'Optimistic Response',
        ),
        Text(
          context.locale!.skillsTechniqueOptimisticResponse,
        ),
        Text(
          'Sorting',
        ),
        Text(
          context.locale!.skillsTechniqueSorting,
        ),
        Text(
          'Animation',
        ),
        Text(
          context.locale!.skillsTechniqueAnimation,
        ),
        Text(
          'Code Generation',
        ),
        Text(
          context.locale!.skillsTechniqueCodeGeneration,
        ),
        Text(
          'Sliver Widgets & NestedScrollView',
        ),
        Text(
          context.locale!.skillsTechniqueSliver,
        ),
        Text(
          'ReorderableListView & Dissmisible',
        ),
        Text(
          context.locale!.skillsTechniqueReorder,
        ),

        // co-work tool
        Text(
          context.locale!.skillsCoWork,
        ),
        Text(
          'Slack',
        ),
        Text(
          'Figma',
        ),
        Text(
          'Notion',
        ),
        Text(
          'Jira',
        ),
        Text(
          'Confluence',
        ),
        Text(
          'Google Sheet',
        ),

        // IDE
        Text(
          context.locale!.skillsIde,
        ),
        Text(
          'IntelliJ IDEA',
        ),
        Text(
          'WebStorm',
        ),
        Text(
          'Android Studio',
        ),

        // Language
        Text(
          context.locale!.skillsLanguage,
        ),
      ],
    );
  }
}
