import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/skills/widgets/skill_card_widget.dart';
import 'package:resume/core/util/extensions/build_context_extension.dart';
import 'package:resume/core/util/function/duration.dart';
import 'package:resume/presentation/common/widgets/fade_slide_widget.dart';

class SkillsToolScreen extends StatelessWidget {
  const SkillsToolScreen({super.key});

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
                'Slack',
                description: context.locale!.skillsToolSlackDescription,
              ),
              SkillCardWidget(
                'Figma',
                description: context.locale!.skillsToolFigmaDescription,
              ),
              SkillCardWidget(
                'Notion',
                description: context.locale!.skillsToolNotionDescription,
              ),
              SkillCardWidget(
                'Jira',
                description: context.locale!.skillsToolJiraDescription,
              ),
              SkillCardWidget(
                'Confluence',
                description: context.locale!.skillsToolConfluenceDescription,
              ),
              SkillCardWidget(
                'Google Sheet',
                description: context.locale!.skillsToolGoogleSheetDescription,
              ),
              SkillCardWidget(
                'IntelliJ IDEA',
                description: context.locale!.skillsToolIntelliJDescription,
              ),
              SkillCardWidget(
                'WebStorm',
                description: context.locale!.skillsToolWebStormDescription,
              ),
              SkillCardWidget(
                'Android Studio',
                description: context.locale!.skillsToolAndroidStudioDescription,
              ),
              SkillCardWidget(
                'Visual Studio Code',
                description:
                    context.locale!.skillsToolVisualStudioCodeDescription,
              ),
              SkillCardWidget(
                'Git',
                description: context.locale!.skillsToolGitDescription,
              ),
              SkillCardWidget(
                'SVN',
                description: context.locale!.skillsToolSvnDescription,
              ),
              const SkillCardWidget(
                'Korean(Native)',
              ),
              const SkillCardWidget(
                'English(Proficient)',
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
