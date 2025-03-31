import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvMoneytoringScreen extends StatelessWidget {
  const CvMoneytoringScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvMoneytoringTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvMoneytoringSubtitle,
          startDate: DateTime(2024, 11),
          endDate: DateTime(2025, 4),
          contents: [
            context.locale!.cvMoneytoringContent1,
            context.locale!.cvMoneytoringContent2,
          ],
        ),
      ],
    );
  }
}
