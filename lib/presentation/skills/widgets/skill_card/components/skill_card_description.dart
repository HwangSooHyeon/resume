import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';

class SkillCardDescription extends StatelessWidget {
  final String description;

  const SkillCardDescription({
    super.key,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      style: CustomTextTheme.regularTextStyle(
        fontSize: 14,
        color: context.colorScheme.onSurface.withValues(alpha: 0.7),
      ),
    );
  }
}
