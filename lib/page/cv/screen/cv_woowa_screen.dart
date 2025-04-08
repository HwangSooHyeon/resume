import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvWoowaScreen extends StatelessWidget {
  const CvWoowaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvWoowaTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvWoowaSubtitle,
          contents: const [],
        ),
      ],
    );
  }
}
