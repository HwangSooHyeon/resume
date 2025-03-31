import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvFireAntScreen extends StatelessWidget {
  const CvFireAntScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvFireAntTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvFireAntSubtitle,
          startDate: DateTime(2024, 6),
          endDate: DateTime(2024, 11),
          contents: [
            context.locale!.cvFireAntContent1,
            context.locale!.cvFireAntContent2,
            context.locale!.cvFireAntContent3,
            context.locale!.cvFireAntContent4,
            context.locale!.cvFireAntContent5,
            context.locale!.cvFireAntContent6,
            context.locale!.cvFireAntContent7,
            context.locale!.cvFireAntContent8,
            context.locale!.cvFireAntContent9,
            context.locale!.cvFireAntContent10,
            context.locale!.cvFireAntContent11,
            context.locale!.cvFireAntContent12,
            context.locale!.cvFireAntContent13,
            context.locale!.cvFireAntContent14,
            context.locale!.cvFireAntContent15,
            context.locale!.cvFireAntContent16,
          ],
        ),
      ],
    );
  }
}
