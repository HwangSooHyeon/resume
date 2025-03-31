import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvHectoScreen extends StatelessWidget {
  const CvHectoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvHectoFinancialTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvHectoFinancialSubtitle,
          startDate: DateTime(2021, 11),
          endDate: DateTime(2022, 8),
          contents: [
            context.locale!.cvHectoFinancialContent1,
            context.locale!.cvHectoFinancialContent2,
            context.locale!.cvHectoFinancialContent3,
            context.locale!.cvHectoFinancialContent4,
            context.locale!.cvHectoFinancialContent5,
          ],
        ),
      ],
    );
  }
}
