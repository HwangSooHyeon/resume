import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';
import 'package:resume/page/cv/widget/timeline/domain/timeline_detail_model.dart';
import 'package:resume/page/cv/widget/timeline/presentation/widgets/modal/link_button.dart';

class ModalContent extends StatelessWidget {
  const ModalContent({
    super.key,
    required this.detail,
  });

  final TimelineDetailModel detail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 이미지 (있는 경우)
              if (detail.image != null)
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Container(
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(2, 4),
                          blurRadius: 15,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: detail.image,
                    ),
                  ),
                ),

              // 설명
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 제목
                    Text(
                      detail.title,
                      style: CustomTextTheme.boldTextStyle(fontSize: 20),
                    ),

                    // 부제목 (있는 경우)
                    if (detail.subTitle != null &&
                        detail.subTitle!.isNotEmpty) ...[
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color:
                                  context.colorScheme.primary.withOpacity(0.6),
                              width: 2,
                            ),
                          ),
                          color: context.colorScheme.surfaceVariant
                              .withOpacity(0.3),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                        ),
                        child: Text(
                          detail.subTitle!,
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color:
                                context.colorScheme.onSurface.withOpacity(0.85),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],

                    const SizedBox(height: 16),

                    // 설명 목록 (여러 설명을 표시)
                    if (detail.descriptions.isNotEmpty)
                      ...detail.descriptions.map((description) {
                        // URL인지 확인
                        final bool isUrl = description.startsWith('http://') ||
                            description.startsWith('https://');

                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // URL이 아닌 경우에만 불릿 포인트 표시
                              if (!isUrl)
                                Container(
                                  margin:
                                      const EdgeInsets.only(top: 10, right: 8),
                                  height: 6,
                                  width: 6,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.primary,
                                    shape: BoxShape.circle,
                                  ),
                                ),

                              // URL인 경우 버튼으로 표시, 아니면 일반 텍스트
                              Expanded(
                                child: isUrl
                                    ? LinkButton(url: description)
                                    : Text(
                                        description,
                                        style: CustomTextTheme.regularTextStyle(
                                          fontSize: 16,
                                          height: 1.6,
                                          color: context.colorScheme.onSurface,
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
