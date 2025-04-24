import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';

class SkillModalHeader extends StatelessWidget {
  final String name;
  final VoidCallback onClose;

  const SkillModalHeader({
    required this.name,
    required this.onClose,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        border: Border(
          bottom: BorderSide(
            color: context.colorScheme.onSurface.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 24,
            width: 4,
            decoration: BoxDecoration(
              color: context.colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Text(
              name,
              style: CustomTextTheme.boldTextStyle(
                fontSize: 24,
                color: context.colorScheme.onPrimary,
              ),
            ),
          ),
          IconButton(
            onPressed: onClose,
            icon: Icon(
              Icons.close_rounded,
              color: context.colorScheme.onPrimary,
              size: 24,
            ),
            splashRadius: 20,
            tooltip: 'Close',
          ),
        ],
      ),
    );
  }
}
