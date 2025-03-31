import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvInvestarBackOfficeScreen extends StatelessWidget {
  const CvInvestarBackOfficeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvInvestarBackOfficeTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarBackOfficeSubtitle,
          startDate: DateTime(2024, 5),
          endDate: DateTime(2024, 7),
          contents: [context.locale!.cvInvestarBackOfficeContent],
        ),
      ],
    );
  }
}
