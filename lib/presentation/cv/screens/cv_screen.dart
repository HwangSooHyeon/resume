import 'package:flutter/material.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/presentation/cv/widgets/timeline/models/timeline_detail_model.dart';
import 'package:resume/presentation/cv/widgets/timeline/models/timeline_model.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';

import '../widgets/timeline/timeline_widget.dart';

class CvScreen extends StatefulWidget {
  static const String path = '/cv';
  const CvScreen({super.key});

  @override
  State<CvScreen> createState() => _CvScreenState();
}

class _CvScreenState extends State<CvScreen> with TickerProviderStateMixin {
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildProfile() {
    return Container(
      margin: const EdgeInsets.fromLTRB(100, 30, 100, 0),
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: context.colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            offset: const Offset(2, 4),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        spacing: 32,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Assets.image.imageProfile.image(fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  context.locale!.myName,
                  style: CustomTextTheme.boldTextStyle(fontSize: 36),
                ),
                Text(
                  context.locale!.title,
                  style: CustomTextTheme.regularTextStyle(
                    fontSize: 20,
                    color: context.colorScheme.primary,
                  ),
                ),
                Text(
                  context.locale!.cvProfileComment,
                  style: CustomTextTheme.regularTextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 32),
      alignment: Alignment.topLeft,
      child: Text(
        'Time Line',
        style: CustomTextTheme.boldTextStyle(fontSize: 32),
      ),
    );
  }

  Widget _buildYearLabel() {
    return Timeline.defaultDate(
      timelines: [
        TimelineModel(
          startDate: DateTime(2020),
          endDate: DateTime(2021),
          label: '2020',
        ),
        TimelineModel(
          startDate: DateTime(2021),
          endDate: DateTime(2022),
          label: '2021',
        ),
        TimelineModel(
          startDate: DateTime(2022),
          endDate: DateTime(2023),
          label: '2022',
        ),
        TimelineModel(
          startDate: DateTime(2023),
          endDate: DateTime(2024),
          label: '2023',
        ),
        TimelineModel(
          startDate: DateTime(2024),
          endDate: DateTime(2025),
          label: '2024',
        ),
        TimelineModel(
          startDate: DateTime(2025),
          endDate: DateTime(2026),
          label: '2025',
        ),
      ],
    );
  }

  _directionalTimeline() {
    return TimelineModel(
      startDate: DateTime(2023, 4),
      endDate: DateTime(2025, 4),
      label: context.locale!.cvDirectionalTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvDirectionalTitle,
          subTitle: context.locale!.cvDirectionalSubtitle,
          descriptions: [
            context.locale!.cvDirectionalContent1,
            context.locale!.cvDirectionalContent2,
            context.locale!.cvDirectionalContent3,
            context.locale!.cvDirectionalContent4,
            context.locale!.cvDirectionalContent5,
          ],
        ),
      ],
    );
  }

  _woowaTimeline() {
    return TimelineModel(
      startDate: DateTime(2022, 10),
      endDate: DateTime(2022, 12),
      label: context.locale!.cvWoowaTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvWoowaTitle,
          subTitle: context.locale!.cvWoowaSubtitle,
          descriptions: [
            'https://github.com/HwangSooHyeon/kotlin-lotto/tree/TDD_HwangSooHyeon',
            'https://github.com/HwangSooHyeon/precourse-study-vending-machine/tree/HwangSooHyeon',
            'https://github.com/HwangSooHyeon/kotlin-baseball/tree/TDD_HwangSooHyeon',
            'https://github.com/HwangSooHyeon/precourse-study-racing-car/tree/HwangSooHyeon',
            'https://github.com/HwangSooHyeon/kotlin-bridge/tree/HwangSooHyeon',
          ],
        ),
      ],
    );
  }

  _hectoTimeline() {
    return TimelineModel(
      startDate: DateTime(2021, 11),
      endDate: DateTime(2022, 8),
      label: context.locale!.cvHectoFinancialTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvHectoFinancialTitle,
          subTitle: context.locale!.cvHectoFinancialSubtitle,
          descriptions: [
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

  _itAcademyTimeline() {
    return TimelineModel(
      startDate: DateTime(2020, 12),
      endDate: DateTime(2021, 6),
      label: context.locale!.cvItAcademyTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvItAcademyTitle,
          subTitle: context.locale!.cvItAcademySubtitle,
          descriptions: [
            context.locale!.cvItAcademyContent1,
            context.locale!.cvItAcademyContent2,
          ],
        ),
      ],
    );
  }

  _graduateSchoolTimeline() {
    return TimelineModel(
      startDate: DateTime(2020, 3),
      endDate: DateTime(2020, 9),
      label: context.locale!.cvGraduateSchoolTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvGraduateSchoolTitle,
          subTitle: context.locale!.cvGraduateSchoolSubtitle,
          descriptions: [
            context.locale!.cvGraduateSchoolContent1,
            context.locale!.cvGraduateSchoolContent2,
          ],
        ),
      ],
    );
  }

  _universityTimeline() {
    return TimelineModel(
      startDate: DateTime(2013, 3),
      endDate: DateTime(2020, 2),
      label: context.locale!.cvUniversityTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvUniversityTitle,
          subTitle: context.locale!.cvUniversitySubtitle,
          descriptions: [
            context.locale!.cvUniversityContent1,
            context.locale!.cvUniversityContent2,
          ],
        ),
      ],
    );
  }

  _sblTimeline() {
    return TimelineModel(
      startDate: DateTime(2023, 8),
      endDate: DateTime(2023, 12),
      label: context.locale!.cvSblTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvSblTitle,
          subTitle: context.locale!.cvSblSubtitle,
          image: Assets.image.imageSblApp1.image(),
          descriptions: [
            context.locale!.cvSblContent1,
            context.locale!.cvSblContent2,
          ],
        ),
        TimelineDetailModel(
          title: context.locale!.cvSblTitle,
          subTitle: context.locale!.cvSblSubtitle,
          image: Assets.image.imageSblApp2.image(),
          descriptions: [
            context.locale!.cvSblContent3,
            context.locale!.cvSblContent4,
          ],
        ),
        TimelineDetailModel(
          title: context.locale!.cvSblTitle,
          subTitle: context.locale!.cvSblSubtitle,
          image: Assets.image.imageSblApp3.image(),
          descriptions: [
            context.locale!.cvSblContent5,
            context.locale!.cvSblContent6,
          ],
        ),
        TimelineDetailModel(
          title: context.locale!.cvSblTitle,
          subTitle: context.locale!.cvSblSubtitle,
          image: Assets.image.imageSblApp4.image(),
          descriptions: [
            context.locale!.cvSblContent7,
            context.locale!.cvSblContent8,
          ],
        ),
      ],
    );
  }

  _fireAntTimeline() {
    return TimelineModel(
      startDate: DateTime(2024, 6),
      endDate: DateTime(2024, 11),
      label: context.locale!.cvFireAntTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvFireAntTitle,
          subTitle: context.locale!.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt1.image(),
          descriptions: [
            context.locale!.cvFireAntContent1,
            context.locale!.cvFireAntContent2,
            context.locale!.cvFireAntContent3,
          ],
        ),
        TimelineDetailModel(
          title: context.locale!.cvFireAntTitle,
          subTitle: context.locale!.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt2.image(),
          descriptions: [
            context.locale!.cvFireAntContent4,
            context.locale!.cvFireAntContent5,
            context.locale!.cvFireAntContent6,
          ],
        ),
        TimelineDetailModel(
          title: context.locale!.cvFireAntTitle,
          subTitle: context.locale!.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt3.image(),
          descriptions: [
            context.locale!.cvFireAntContent7,
            context.locale!.cvFireAntContent8,
            context.locale!.cvFireAntContent9,
          ],
        ),
        TimelineDetailModel(
          title: context.locale!.cvFireAntTitle,
          subTitle: context.locale!.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt4.image(),
          descriptions: [
            context.locale!.cvFireAntContent10,
            context.locale!.cvFireAntContent11,
            context.locale!.cvFireAntContent12,
          ],
        ),
        TimelineDetailModel(
          title: context.locale!.cvFireAntTitle,
          subTitle: context.locale!.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt5.image(),
          descriptions: [
            context.locale!.cvFireAntContent13,
            context.locale!.cvFireAntContent14,
            context.locale!.cvFireAntContent15,
          ],
        ),
        TimelineDetailModel(
          title: context.locale!.cvFireAntTitle,
          subTitle: context.locale!.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt6.image(),
          descriptions: [
            context.locale!.cvFireAntContent16,
          ],
        ),
      ],
    );
  }

  _moneytoringTimeline() {
    return TimelineModel(
      startDate: DateTime(2024, 12),
      endDate: DateTime(2025, 4),
      label: context.locale!.cvMoneytoringTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvMoneytoringTitle,
          subTitle: context.locale!.cvMoneytoringSubtitle,
          descriptions: [
            context.locale!.cvMoneytoringContent1,
            context.locale!.cvMoneytoringContent2,
            context.locale!.cvMoneytoringContent3,
            context.locale!.cvMoneytoringContent4,
          ],
        ),
      ],
    );
  }

  _investarBackOfficeTimeline() {
    return TimelineModel(
      startDate: DateTime(2024, 5),
      endDate: DateTime(2024, 8),
      label: context.locale!.cvInvestarBackOfficeTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvInvestarBackOfficeTitle,
          subTitle: context.locale!.cvInvestarBackOfficeSubtitle,
          descriptions: [
            context.locale!.cvInvestarBackOfficeContent,
          ],
        ),
      ],
    );
  }

  _investarTimeline() {
    return TimelineModel(
      startDate: DateTime(2023, 4),
      endDate: DateTime(2024, 11),
      label: context.locale!.cvInvestarTitle,
      details: [
        TimelineDetailModel(
          title: context.locale!.cvInvestarTitle,
          subTitle: context.locale!.cvInvestarSubtitle,
          image: Assets.image.imageInvestarKor1.image(),
        ),
        TimelineDetailModel(
          title: 'Daily Coin Page',
          subTitle: context.locale!.cvInvestarDailyCoinSubtitle,
          image: Assets.image.imageDailyCoin.image(),
          descriptions: [
            context.locale!.cvInvestarDailyCoinContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Rising Score Page',
          subTitle: context.locale!.cvInvestarRisingScoreSubtitle,
          image: Assets.image.imageInvestarKor1.image(),
          descriptions: [
            context.locale!.cvInvestarRisingScoreContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Home Carousel Widget',
          subTitle: context.locale!.cvInvestarCarouselSubtitle,
          image: Assets.image.imageInvestarKor1.image(),
          descriptions: [
            context.locale!.cvInvestarCarouselContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Whale Page',
          subTitle: context.locale!.cvInvestarWhaleSubtitle,
          image: Assets.image.imageInvestarKor7.image(),
          descriptions: [
            context.locale!.cvInvestarWhaleContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Favorite Page',
          subTitle: context.locale!.cvInvestarFavoriteSubtitle,
          image: Assets.image.imageInvestarKor2.image(),
          descriptions: [
            context.locale!.cvInvestarFavoriteContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Community Page',
          subTitle: context.locale!.cvInvestarCommunitySubtitle,
          image: Assets.image.imageInvestarKor8.image(),
          descriptions: [
            context.locale!.cvInvestarCommunityContent,
          ],
        ),
        TimelineDetailModel(
          title: 'My Page',
          subTitle: context.locale!.cvInvestarMySubtitle,
          image: Assets.image.imageInvestarMy.image(),
          descriptions: [
            context.locale!.cvInvestarMyContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Search Page',
          subTitle: context.locale!.cvInvestarSearchSubtitle,
          image: Assets.image.imageInvestarKor2.image(),
          descriptions: [
            context.locale!.cvInvestarSearchContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Common',
          subTitle: context.locale!.cvInvestarCommonSubtitle,
          image: Assets.image.imageInvestarKor4.image(),
          descriptions: [
            context.locale!.cvInvestarCommonContent1,
            context.locale!.cvInvestarCommonContent2,
            context.locale!.cvInvestarCommonContent3,
            context.locale!.cvInvestarCommonContent4,
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return FadeSlideWidget(
      delay: animationDelay(order: 0),
      child: Wrap(
        runSpacing: 30,
        children: [
          FadeSlideWidget(
            delay: animationDelay(order: 1),
            child: _buildProfile(),
          ),
          Container(
            height: context.height - 164 - 244,
            width: context.width,
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              children: [
                FadeSlideWidget(
                  delay: animationDelay(order: 2),
                  child: _buildTitle(),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 3),
                  child: _buildYearLabel(),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 4),
                  child: Timeline(
                    timelines: [
                      _directionalTimeline(),
                      _woowaTimeline(),
                      _hectoTimeline(),
                      _itAcademyTimeline(),
                      _graduateSchoolTimeline(),
                      _universityTimeline(),
                    ],
                  ),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 5),
                  child: Timeline(
                    timelines: [
                      _sblTimeline(),
                      _fireAntTimeline(),
                      _moneytoringTimeline(),
                    ],
                  ),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 6),
                  child: Timeline(
                    timelines: [
                      _investarBackOfficeTimeline(),
                    ],
                  ),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 7),
                  child: Timeline(
                    timelines: [
                      _investarTimeline(),
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
