import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvGraduateSchoolScreen extends StatelessWidget {
  const CvGraduateSchoolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvGraduateSchoolTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvGraduateSchoolSubtitle,
          startDate: DateTime(2020, 3),
          endDate: DateTime(2020, 9),
          contents: [
            context.locale!.cvGraduateSchoolContent1,
            context.locale!.cvGraduateSchoolContent2,
          ],
        ),
      ],
    );
  }
}
