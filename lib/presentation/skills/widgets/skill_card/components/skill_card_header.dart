import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';

class SkillCardHeader extends StatelessWidget {
  final String name;

  const SkillCardHeader({
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          context.colorScheme.primary,
          context.colorScheme.secondary,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Text(
        name,
        style: CustomTextTheme.boldTextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
