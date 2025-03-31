import 'package:flutter/material.dart';
import 'package:resume/page/cv/widget/description-body/description_body.dart';
import 'package:resume/page/cv/widget/description-body/description_subtitle.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvInvestarScreen extends StatelessWidget {
  const CvInvestarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DescriptionBody.withSubtitle(
      title: context.locale!.cvInvestarTitle,
      subtitles: [
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarSubtitle,
          startDate: DateTime(2023, 4),
          endDate: DateTime(2024, 11),
          contents: const [],
        ),
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarDailyCoinSubtitle,
          contents: [context.locale!.cvInvestarDailyCoinContent],
        ),
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarRisingScoreSubtitle,
          contents: [context.locale!.cvInvestarRisingScoreContent],
        ),
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarCarouselSubtitle,
          contents: [context.locale!.cvInvestarCarouselContent],
        ),
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarWhaleSubtitle,
          contents: [context.locale!.cvInvestarWhaleContent],
        ),
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarFavoriteSubtitle,
          contents: [context.locale!.cvInvestarFavoriteContent],
        ),
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarCommunitySubtitle,
          contents: [context.locale!.cvInvestarCommunityContent],
        ),
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarMySubtitle,
          contents: [context.locale!.cvInvestarMyContent],
        ),
        DescriptionSubtitle(
          subtitle: context.locale!.cvInvestarSearchSubtitle,
          contents: [context.locale!.cvInvestarSearchContent],
        ),
      ],
    );
  }
}
