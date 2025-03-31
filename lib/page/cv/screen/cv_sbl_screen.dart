import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvSblScreen extends StatelessWidget {
  const CvSblScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvSblTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvSblSubtitle,
          startDate: DateTime(2023, 8),
          endDate: DateTime(2024, 12),
          contents: [
            context.locale!.cvSblContent1,
            context.locale!.cvSblContent2,
            context.locale!.cvSblContent3,
            context.locale!.cvSblContent4,
            context.locale!.cvSblContent5,
            context.locale!.cvSblContent6,
            context.locale!.cvSblContent7,
            context.locale!.cvSblContent8,
          ],
        ),
      ],
    );
  }
}
