import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class CoverLetterScreen extends StatefulWidget {
  static const String path = '/coverLetter';
  const CoverLetterScreen({super.key});

  @override
  State<CoverLetterScreen> createState() => _CoverLetterScreenState();
}

class _CoverLetterScreenState extends State<CoverLetterScreen> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const Gap(200),
        Text(
          context.locale!.coverLetterTitle1,
          style: CustomTextTheme.boldTextStyle(fontSize: 44),
        ),
        const Gap(200),
        Text(
          context.locale!.coverLetterTitle2,
          style: CustomTextTheme.boldTextStyle(fontSize: 24),
        ),
        const Gap(200),
        Text(
          context.locale!.coverLetterTitle3,
          style: CustomTextTheme.boldTextStyle(fontSize: 24),
        ),
        const Gap(200),
        Text(
          context.locale!.coverLetterTitle4,
          style: CustomTextTheme.boldTextStyle(fontSize: 24),
        ),
        const Gap(200),
        Text(
          context.locale!.coverLetterTitle1,
          style: CustomTextTheme.boldTextStyle(fontSize: 44),
        ),
        const Gap(16),
        Text(
          context.locale!.coverLetterTitle2,
          style: CustomTextTheme.boldTextStyle(fontSize: 24),
        ),
        Text(
          context.locale!.coverLetterTitle3,
          style: CustomTextTheme.boldTextStyle(fontSize: 24),
        ),
        Text(
          context.locale!.coverLetterTitle4,
          style: CustomTextTheme.boldTextStyle(fontSize: 24),
        ),
        const Gap(32),
        Row(
          children: [
            Container(
              width: 466,
              height: 372,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: context.colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    context.locale!.coverLetterCard1_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(24),
                  Text(context.locale!.coverLetterCard1_2),
                  const Gap(24),
                  Text(context.locale!.coverLetterCard1_3),
                ],
              ),
            ),
            Container(
              width: 466,
              height: 372,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: context.colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    context.locale!.coverLetterCard2_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(24),
                  Text(context.locale!.coverLetterCard2_2),
                  const Gap(24),
                  Text(context.locale!.coverLetterCard2_3),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 466,
              height: 372,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: context.colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    context.locale!.coverLetterCard3_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(24),
                  Text(context.locale!.coverLetterCard3_2),
                  const Gap(24),
                  Text(context.locale!.coverLetterCard3_3),
                ],
              ),
            ),
            Container(
              width: 466,
              height: 372,
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: context.colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Text(
                    context.locale!.coverLetterCard4_1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 32),
                  ),
                  const Gap(24),
                  Text(context.locale!.coverLetterCard4_2),
                  const Gap(24),
                  Text(context.locale!.coverLetterCard4_3),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
