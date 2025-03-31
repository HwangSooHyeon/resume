import 'package:flutter/material.dart';
import 'package:resume/model/enum/skills_enum.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class SkillsScreen extends StatefulWidget {
  static const String path = '/skills';
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen> {
  final _scrollController = ScrollController();
  final _sectionKeys =
      List.generate(SkillsEnum.values.length, (_) => GlobalKey());

  _scrollToSection(GlobalKey key) {
    if (key.currentContext == null) return;
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100).copyWith(top: 100),
      child: Wrap(
        children: [
          SizedBox(
            width: (context.width - 200) * 0.3,
            height: context.height - 100 - 184,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: SkillsEnum.values
                  .map(
                    (element) => GestureDetector(
                      onTap: () {
                        _scrollToSection(_sectionKeys[element.index]);
                      },
                      child: element.widget,
                    ),
                  )
                  .toList(),
            ),
          ),
          SizedBox(
            width: (context.width - 200) * 0.7,
            height: context.height - 100 - 184,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Language
                  Text(
                    key: _sectionKeys[SkillsEnum.programmingLanguage.index],
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
                    key: _sectionKeys[SkillsEnum.library.index],
                    'Riverpod',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryRiverpod1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryRiverpod2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Retrofit',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryRetrofit,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Dio',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryDio,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Firebase',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryFirebase1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryFirebase2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Shared Preference & Secure Storage',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryStorage,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'GraphQL',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryGraphQL,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Logger',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryLogger,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Image Picker',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryImagePicker,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Syncfusion Chart',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibrarySyncfusionChart,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Freezed',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryFreezed,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Widgetbook',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryWidgetbook,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Go Router',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryGoRouter1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryGoRouter2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Skeletonizer',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibrarySkeletonizer,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Localization',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryLocalization1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryLocalization2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibraryLocalization3,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'SQFLite',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsLibrarySQFLite,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Text(
                    'Flutter Gen',
                  ),
                  Text(
                    context.locale!.skillsLibraryFlutterGen,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),

                  // Technique
                  Text(
                    key: _sectionKeys[SkillsEnum.technique.index],
                    'Pagination',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsTechniquePagination1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsTechniquePagination2,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Optimistic Response',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsTechniqueOptimisticResponse,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Sorting',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsTechniqueSorting,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Animation',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsTechniqueAnimation,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Code Generation',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsTechniqueCodeGeneration,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Sliver Widgets & NestedScrollView',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsTechniqueSliver,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'ReorderableListView & Dissmisible',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    context.locale!.skillsTechniqueReorder,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  // co-work tool
                  Text(
                    key: _sectionKeys[SkillsEnum.coWork.index],
                    context.locale!.skillsCoWork,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Slack',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Figma',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Notion',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Jira',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Confluence',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Google Sheet',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  // IDE
                  Text(
                    key: _sectionKeys[SkillsEnum.ide.index],
                    context.locale!.skillsIde,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'IntelliJ IDEA',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'WebStorm',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Android Studio',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),

                  // Language
                  Text(
                    context.locale!.skillsLanguage,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  Text(
                    'Korea(Native), English(Between proficient and fluent)',
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
