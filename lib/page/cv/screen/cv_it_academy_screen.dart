import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvItAcademyScreen extends StatelessWidget {
  const CvItAcademyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvItAcademyTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvItAcademySubtitle,
          contents: [
            context.locale!.cvItAcademyContent1,
            context.locale!.cvItAcademyContent2,
          ],
        ),
      ],
    );
  }
}
