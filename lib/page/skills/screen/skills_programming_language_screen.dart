import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:resume/page/skills/widget/skill_card_widget.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/extension/locale_extension.dart';
import 'package:resume/util/function/duration.dart';
import 'package:resume/widget/common/fade_slide_widget.dart';

class SkillsProgrammingLanguageScreen extends StatelessWidget {
  const SkillsProgrammingLanguageScreen({super.key});

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
                'Dart',
                level: 90,
                description: context.locale!.skillsLanguageLevel5,
                detailedDescriptions: context.locale!.dartDetailedDescriptions,
              ),
              SkillCardWidget(
                'TypeScript',
                level: 80,
                description: context.locale!.skillsLanguageLevel5,
                detailedDescriptions:
                    context.locale!.typeScriptDetailedDescriptions,
              ),
              SkillCardWidget(
                'Kotlin',
                level: 70,
                description: context.locale!.skillsLanguageLevel4,
                detailedDescriptions:
                    context.locale!.kotlinDetailedDescriptions,
              ),
              SkillCardWidget(
                'Java',
                level: 60,
                description: context.locale!.skillsLanguageLevel4,
                detailedDescriptions: context.locale!.javaDetailedDescriptions,
              ),
              SkillCardWidget(
                'C',
                level: 50,
                description: context.locale!.skillsLanguageLevel3,
                detailedDescriptions: context.locale!.cDetailedDescriptions,
              ),
              SkillCardWidget(
                'SQL',
                level: 30,
                description: context.locale!.skillsLanguageLevel2,
                detailedDescriptions: context.locale!.sqlDetailedDescriptions,
              ),
              SkillCardWidget(
                'C++',
                level: 20,
                description: context.locale!.skillsLanguageLevel2,
                detailedDescriptions: context.locale!.cppDetailedDescriptions,
              ),
              SkillCardWidget(
                'Python',
                level: 20,
                description: context.locale!.skillsLanguageLevel1,
                detailedDescriptions:
                    context.locale!.pythonDetailedDescriptions,
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
