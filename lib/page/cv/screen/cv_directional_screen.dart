import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvDirectionalScreen extends StatelessWidget {
  const CvDirectionalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvDirectionalTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvDirectionalSubtitle,
          startDate: DateTime(2023, 4),
          endDate: DateTime(2025, 4),
          contents: [
            context.locale!.cvDirectionalContent1,
            context.locale!.cvDirectionalContent2,
            context.locale!.cvDirectionalContent3,
            context.locale!.cvDirectionalContent4,
            context.locale!.cvDirectionalContent5,
          ],
        ),
      ],
    );
  }
}
