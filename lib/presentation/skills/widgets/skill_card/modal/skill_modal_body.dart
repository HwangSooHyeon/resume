import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/domain/entities/skills_model.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';

class SkillModalBody extends StatelessWidget {
  final SkillItem skill;

  const SkillModalBody({
    required this.skill,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          if (skill.level != null) _buildProgressSection(context),
          Text(
            'Detailed Information',
            style: CustomTextTheme.boldTextStyle(
              fontSize: 18,
              color: context.colorScheme.onSurface,
            ),
          ),
          ...skill.detailedDescriptions.mapIndexed((i, e) {
            return FadeSlideWidget(
              delay: animationDelay(order: i),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 8, right: 12),
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: context.colorScheme.primary,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      e,
                      style: CustomTextTheme.regularTextStyle(
                        fontSize: 16,
                        color: context.colorScheme.onSurface
                            .withValues(alpha: 0.9),
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    );
  }

  Widget _buildProgressSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Proficiency Level',
          style: CustomTextTheme.boldTextStyle(
            fontSize: 18,
            color: context.colorScheme.onSurface,
          ),
        ),
        const Gap(16),
        Row(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(
                  value: skill.level! / 100,
                  backgroundColor:
                      context.colorScheme.onSurface.withValues(alpha: 0.2),
                  color: context.colorScheme.primary,
                  minHeight: 10,
                ),
              ),
            ),
            const Gap(12),
            Text(
              '${skill.level!.toInt()}%',
              style: CustomTextTheme.boldTextStyle(
                fontSize: 16,
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
