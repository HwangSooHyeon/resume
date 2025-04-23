import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/core/util/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';

class ModalHeader extends StatelessWidget {
  const ModalHeader({
    super.key,
    required this.label,
    required this.dateRange,
    required this.onClose,
    this.currentIndex,
    this.totalItems,
  });

  final String label;
  final String dateRange;
  final VoidCallback onClose;
  final int? currentIndex;
  final int? totalItems;

  bool get hasMultipleItems =>
      currentIndex != null && totalItems != null && totalItems! > 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            offset: const Offset(2, 4),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hasMultipleItems
                      ? '$label (${currentIndex! + 1}/$totalItems)'
                      : label,
                  style: CustomTextTheme.boldTextStyle(
                    fontSize: 24,
                    color: context.colorScheme.onPrimary,
                  ),
                ),
                Text(
                  dateRange,
                  style: CustomTextTheme.regularTextStyle(
                    fontSize: 14,
                    color: context.colorScheme.onPrimary.withValues(alpha: 0.9),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(Icons.close, color: context.colorScheme.onPrimary),
            onPressed: onClose,
            splashRadius: 24,
          ),
        ],
      ),
    );
  }
}
