import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_content.dart';
import 'package:resume/page/cv/widget/description-body/description_date.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class DescriptionSubtitle extends StatelessWidget {
  const DescriptionSubtitle({
    super.key,
    required this.subtitle,
    this.startDate,
    this.endDate,
    required this.contents,
  });

  final String subtitle;
  final DateTime? startDate;
  final DateTime? endDate;
  final List<String> contents;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 24,
      children: [
        if (startDate != null && endDate != null)
          DescriptionDate(
            startDate: startDate!,
            endDate: endDate!,
          ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            subtitle,
            style: CustomTextTheme.regularTextStyle(fontSize: 24, height: 2),
          ),
        ),
        if (contents.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              spacing: 24,
              children: [
                ...contents.map(
                  (content) => DescriptionContent(
                    content: content,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
