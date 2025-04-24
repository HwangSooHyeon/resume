import 'package:flutter/material.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/presentation/cover-letter/widgets/cover_letter_image_box_widget.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';
import 'package:resume/presentation/core/widgets/page_fade_widget.dart';

class CoverLetterScreen extends StatefulWidget {
  static const String path = '/coverLetter';
  const CoverLetterScreen({super.key});

  @override
  State<CoverLetterScreen> createState() => _CoverLetterScreenState();
}

class _CoverLetterScreenState extends State<CoverLetterScreen> {
  @override
  Widget build(BuildContext context) {
    return FadeSlideWidget(
      delay: const Duration(milliseconds: 500),
      child: Wrap(
        children: [
          SizedBox(
            height: context.height - 164,
            width: context.width,
            child: PageFadeWidget(
              backgroundImage: Assets.image.imageCoverLetterBackground1,
              children: [
                Text(
                  context.locale!.coverLetterTitle1,
                  style: CustomTextTheme.boldTextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
                Text(
                  context.locale!.coverLetterTitle2,
                  style: CustomTextTheme.boldTextStyle(fontSize: 32),
                ),
                Text(
                  context.locale!.coverLetterTitle3,
                  style: CustomTextTheme.boldTextStyle(fontSize: 32),
                ),
                Text(
                  context.locale!.coverLetterTitle4,
                  style: CustomTextTheme.boldTextStyle(fontSize: 32),
                ),
                Container(
                  height: context.height - 164,
                  width: context.width * 0.8,
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.15 * context.width - 7.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: context.colorScheme.surface,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 30,
                    children: [
                      CustomText.bold(
                        context.locale!.coverLetterTitle5,
                        fontSize: 32,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          CustomText.bold(
                            context.locale!.coverLetterTitle5_1,
                            fontSize: 20,
                            textColor: TextColorEnum.sub,
                          ),
                          CustomText.bold(
                            context.locale!.coverLetterTitle5_2,
                            fontSize: 20,
                            textColor: TextColorEnum.sub,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 30,
                        children: [
                          CoverLetterImageBoxWidget(
                            image: Assets.image.imageCoverLetter1,
                            title: context.locale!.coverLetterCard1_1,
                            description: [
                              context.locale!.coverLetterCard1_2,
                              context.locale!.coverLetterCard1_3,
                            ],
                          ),
                          CoverLetterImageBoxWidget(
                            image: Assets.image.imageCoverLetter2,
                            title: context.locale!.coverLetterCard2_1,
                            description: [
                              context.locale!.coverLetterCard2_2,
                              context.locale!.coverLetterCard2_3,
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 30,
                        children: [
                          CoverLetterImageBoxWidget(
                            image: Assets.image.imageCoverLetter3,
                            title: context.locale!.coverLetterCard3_1,
                            description: [
                              context.locale!.coverLetterCard3_2,
                              context.locale!.coverLetterCard3_3,
                            ],
                          ),
                          CoverLetterImageBoxWidget(
                            image: Assets.image.imageCoverLetter4,
                            title: context.locale!.coverLetterCard4_1,
                            description: [
                              context.locale!.coverLetterCard4_2,
                              context.locale!.coverLetterCard4_3,
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
