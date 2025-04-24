import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/cv/widgets/timeline/models/timeline_detail_model.dart';
import 'package:resume/presentation/cv/widgets/timeline/modal/link_button.dart';

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
              if (detail.image != null)
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Container(
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.08),
                          offset: const Offset(2, 4),
                          blurRadius: 10,
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 16,
                  children: [
                    Text(
                      detail.title,
                      style: CustomTextTheme.boldTextStyle(fontSize: 20),
                    ),
                    if (detail.subTitle != null && detail.subTitle!.isNotEmpty)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                              color: context.colorScheme.primary
                                  .withValues(alpha: 0.6),
                              width: 2,
                            ),
                          ),
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
                    if (detail.descriptions.isNotEmpty)
                      ...detail.descriptions.map(
                        (description) {
                          final bool isUrl =
                              description.startsWith('http://') ||
                                  description.startsWith('https://');
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                          );
                        },
                      ),
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
