import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvUniversityScreen extends StatelessWidget {
  const CvUniversityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvUniversityTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvUniversitySubtitle,
          startDate: DateTime(2013, 3),
          endDate: DateTime(2020, 2),
          contents: [
            context.locale!.cvUniversityContent1,
            context.locale!.cvUniversityContent2,
          ],
        ),
      ],
    );
  }
}
