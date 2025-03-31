import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_content.dart';
import 'package:resume/page/cv/widget/description-body/description_date.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/page/cv/widget/description-body/description_title.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody._({
    required this.title,
    this.subtitles,
    this.startDate,
    this.endDate,
    this.contents,
  });

  final String title;
  final List<DescriptionSubtitle>? subtitles;
  final DateTime? startDate;
  final DateTime? endDate;
  final List<String>? contents;

  factory DescriptionBody.withSubtitle({
    required String title,
    required List<DescriptionSubtitle> subtitles,
  }) {
    return DescriptionBody._(
      title: title,
      subtitles: subtitles,
    );
  }

  factory DescriptionBody.withoutSubtitle({
    required String title,
    required DateTime startDate,
    required DateTime endDate,
    required List<String> contents,
  }) {
    return DescriptionBody._(
      title: title,
      startDate: startDate,
      endDate: endDate,
      contents: contents,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 28,
        children: [
          DescriptionTitle(
            title: title,
          ),
          if (subtitles != null)
            ...subtitles!.map(
              (subtitle) => DescriptionSubtitle(
                subtitle: subtitle.subtitle,
                startDate: subtitle.startDate,
                endDate: subtitle.endDate,
                contents: subtitle.contents,
              ),
            ),
          if (contents != null)
            DescriptionDate(
              startDate: startDate!,
              endDate: endDate!,
            ),
          if (contents != null)
            ...contents!.map(
              (content) => DescriptionContent(
                content: content,
              ),
            ),
        ],
      ),
    );
  }
}
