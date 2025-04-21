import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:resume/page/skills/widget/skill_card_widget.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/extension/locale_extension.dart';
import 'package:resume/util/function/duration.dart';
import 'package:resume/widget/common/fade_slide_widget.dart';

class SkillsLibraryScreen extends StatelessWidget {
  const SkillsLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              SkillCardWidget(
                'Riverpod',
                description: context.locale!.skillsLibraryRiverpodDescription,
                detailedDescriptions:
                    context.locale!.riverpodDetailedDescriptions,
              ),
              SkillCardWidget(
                'Retrofit',
                description: context.locale!.skillsLibraryRetrofitDescription,
                detailedDescriptions:
                    context.locale!.retrofitDetailedDescriptions,
              ),
              SkillCardWidget(
                'Dio',
                description: context.locale!.skillsLibraryDioDescription,
                detailedDescriptions: context.locale!.dioDetailedDescriptions,
              ),
              SkillCardWidget(
                'Firebase',
                description: context.locale!.skillsLibraryFirebaseDescription,
                detailedDescriptions:
                    context.locale!.firebaseDetailedDescriptions,
              ),
              SkillCardWidget(
                'Shared Preference & Secure Storage',
                description: context.locale!.skillsLibraryStorageDescription,
                detailedDescriptions:
                    context.locale!.storageDetailedDescriptions,
              ),
              SkillCardWidget(
                'GraphQL',
                description: context.locale!.skillsLibraryGraphQLDescription,
                detailedDescriptions:
                    context.locale!.graphQLDetailedDescriptions,
              ),
              SkillCardWidget(
                'Logger',
                description: context.locale!.skillsLibraryLoggerDescription,
                detailedDescriptions:
                    context.locale!.loggerDetailedDescriptions,
              ),
              SkillCardWidget(
                'Image Picker',
                description:
                    context.locale!.skillsLibraryImagePickerDescription,
                detailedDescriptions:
                    context.locale!.imagePickerDetailedDescriptions,
              ),
              SkillCardWidget(
                'Syncfusion Chart',
                description:
                    context.locale!.skillsLibrarySyncfusionChartDescription,
                detailedDescriptions:
                    context.locale!.syncfusionChartDetailedDescriptions,
              ),
              SkillCardWidget(
                'Freezed',
                description: context.locale!.skillsLibraryFreezedDescription,
                detailedDescriptions:
                    context.locale!.freezedDetailedDescriptions,
              ),
              SkillCardWidget(
                'Widgetbook',
                description: context.locale!.skillsLibraryWidgetbookDescription,
                detailedDescriptions:
                    context.locale!.widgetbookDetailedDescriptions,
              ),
              SkillCardWidget(
                'Go Router',
                description: context.locale!.skillsLibraryGoRouterDescription,
                detailedDescriptions:
                    context.locale!.goRouterDetailedDescriptions,
              ),
              SkillCardWidget(
                'Skeletonizer',
                description:
                    context.locale!.skillsLibrarySkeletonizerDescription,
                detailedDescriptions:
                    context.locale!.skeletonizerDetailedDescriptions,
              ),
              SkillCardWidget(
                'Localization',
                description:
                    context.locale!.skillsLibraryLocalizationDescription,
                detailedDescriptions:
                    context.locale!.localizationDetailedDescriptions,
              ),
              SkillCardWidget(
                'SQFLite',
                description: context.locale!.skillsLibrarySQFLiteDescription,
                detailedDescriptions:
                    context.locale!.sqfliteDetailedDescriptions,
              ),
              SkillCardWidget(
                'Flutter Gen',
                description: context.locale!.skillsLibraryFlutterGenDescription,
                detailedDescriptions:
                    context.locale!.flutterGenDetailedDescriptions,
              ),
            ]
                .mapIndexed((i, e) => FadeSlideWidget(
                      delay: animationDelay(order: i),
                      child: e,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
