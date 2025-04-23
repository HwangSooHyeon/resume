import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

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
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // 헤더 세로 라인
          Container(
            height: 24,
            width: 4,
            decoration: BoxDecoration(
              color: context.colorScheme.onPrimary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(width: 16),

          // 텍스트 정보
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 제목 (및 항목 번호)
                Text(
                  hasMultipleItems
                      ? '$label (${currentIndex! + 1}/$totalItems)'
                      : label,
                  style: CustomTextTheme.boldTextStyle(
                    fontSize: 24,
                    color: context.colorScheme.onPrimary,
                  ),
                ),

                // 날짜 범위
                Text(
                  dateRange,
                  style: CustomTextTheme.regularTextStyle(
                    fontSize: 14,
                    color: context.colorScheme.onPrimary.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),

          // 닫기 버튼
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
