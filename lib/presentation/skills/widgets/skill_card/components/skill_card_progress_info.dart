import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';

class SkillCardProgressInfo extends StatelessWidget {
  final double level;

  const SkillCardProgressInfo({required this.level, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Proficiency:',
              style: CustomTextTheme.regularTextStyle(
                fontSize: 14,
                color: context.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
            const Gap(8),
            Text(
              '${level.toInt()}%',
              style: CustomTextTheme.boldTextStyle(
                fontSize: 14,
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
        const Gap(8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: level / 100,
            backgroundColor:
                context.colorScheme.onSurface.withValues(alpha: 0.2),
            color: context.colorScheme.primary,
            minHeight: 6,
          ),
        ),
      ],
    );
  }
}
