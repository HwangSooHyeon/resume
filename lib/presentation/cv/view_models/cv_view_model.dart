// view_models/cv_view_model.dart
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/core/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/core/provider/app_localizations_state_provider.dart';
import 'package:resume/presentation/cv/models/cv_presentation_model.dart';
import 'package:resume/presentation/cv/models/timeline_detail_model.dart';
import 'package:resume/presentation/cv/models/timeline_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cv_view_model.g.dart';

@riverpod
class CvViewModel extends _$CvViewModel {
  @override
  CvPresentationState build() {
    final locale = ref.watch(appLocalizationsStateProvider);

    try {
      state = const CvPresentationState(isLoading: true);

      final yearLabels = _getYearLabels();
      final workExperience = [
        _getDirectionalTimeline(locale),
        _getHectoTimeline(locale),
      ];
      final projectExperience1 = [
        _getSblTimeline(locale),
        _getFireAntTimeline(locale),
        _getMoneytoringTimeline(locale),
      ];
      final projectExperience2 = [
        _getInvestarBackOfficeTimeline(locale),
      ];
      final projectExperience3 = [
        _getInvestarTimeline(locale),
      ];
      final educationExperience = [
        _getGraduateSchoolTimeline(locale),
        _getUniversityTimeline(locale),
        _getItAcademyTimeline(locale),
        _getWoowaTimeline(locale),
      ];

      return CvPresentationState(
        yearLabels: yearLabels,
        workExperience: workExperience,
        projectExperience1: projectExperience1,
        projectExperience2: projectExperience2,
        projectExperience3: projectExperience3,
        educationExperience: educationExperience,
        isLoading: false,
      );
    } catch (e) {
      return const CvPresentationState(
        errorMessage: '타임라인 데이터를 불러올 수 없습니다.',
        isLoading: false,
      );
    }
  }

  void selectTimeline(TimelineModel? timeline) {
    state = state.copyWith(selectedTimeline: timeline);
  }

  List<TimelineModel> _getYearLabels() {
    return [
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
    ];
  }

  TimelineModel _getDirectionalTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2023, 4),
      endDate: DateTime(2025, 4),
      label: locale.cvDirectionalTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvDirectionalTitle,
          subTitle: locale.cvDirectionalSubtitle,
          descriptions: [
            locale.cvDirectionalContent1,
            locale.cvDirectionalContent2,
            locale.cvDirectionalContent3,
            locale.cvDirectionalContent4,
            locale.cvDirectionalContent5,
          ],
        ),
      ],
    );
  }

  TimelineModel _getWoowaTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2022, 10),
      endDate: DateTime(2022, 12),
      label: locale.cvWoowaTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvWoowaTitle,
          subTitle: locale.cvWoowaSubtitle,
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

  TimelineModel _getHectoTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2021, 11),
      endDate: DateTime(2022, 8),
      label: locale.cvHectoFinancialTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvHectoFinancialTitle,
          subTitle: locale.cvHectoFinancialSubtitle,
          descriptions: [
            locale.cvHectoFinancialContent2,
            locale.cvHectoFinancialContent3,
            locale.cvHectoFinancialContent4,
            locale.cvHectoFinancialContent1,
            locale.cvHectoFinancialContent5,
          ],
        ),
      ],
    );
  }

  TimelineModel _getItAcademyTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2020, 12),
      endDate: DateTime(2021, 6),
      label: locale.cvItAcademyTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvItAcademyTitle,
          subTitle: locale.cvItAcademySubtitle,
          descriptions: [
            locale.cvItAcademyContent1,
            locale.cvItAcademyContent2,
          ],
        ),
      ],
    );
  }

  TimelineModel _getGraduateSchoolTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2020, 3),
      endDate: DateTime(2020, 9),
      label: locale.cvGraduateSchoolTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvGraduateSchoolTitle,
          subTitle: locale.cvGraduateSchoolSubtitle,
          descriptions: [
            locale.cvGraduateSchoolContent1,
            locale.cvGraduateSchoolContent2,
          ],
        ),
      ],
    );
  }

  TimelineModel _getUniversityTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2013, 3),
      endDate: DateTime(2020, 2),
      label: locale.cvUniversityTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvUniversityTitle,
          subTitle: locale.cvUniversitySubtitle,
          descriptions: [
            locale.cvUniversityContent1,
            locale.cvUniversityContent2,
          ],
        ),
      ],
    );
  }

  TimelineModel _getSblTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2023, 8),
      endDate: DateTime(2023, 12),
      label: locale.cvSblTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvSblTitle,
          subTitle: locale.cvSblSubtitle,
          image: Assets.image.imageSblApp1.image(),
          descriptions: [
            locale.cvSblContent1,
            locale.cvSblContent2,
          ],
        ),
        TimelineDetailModel(
          title: locale.cvSblTitle,
          subTitle: locale.cvSblSubtitle,
          image: Assets.image.imageSblApp2.image(),
          descriptions: [
            locale.cvSblContent3,
            locale.cvSblContent4,
          ],
        ),
        TimelineDetailModel(
          title: locale.cvSblTitle,
          subTitle: locale.cvSblSubtitle,
          image: Assets.image.imageSblApp3.image(),
          descriptions: [
            locale.cvSblContent5,
            locale.cvSblContent6,
          ],
        ),
        TimelineDetailModel(
          title: locale.cvSblTitle,
          subTitle: locale.cvSblSubtitle,
          image: Assets.image.imageSblApp4.image(),
          descriptions: [
            locale.cvSblContent7,
            locale.cvSblContent8,
          ],
        ),
      ],
    );
  }

  TimelineModel _getFireAntTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2024, 6),
      endDate: DateTime(2024, 11),
      label: locale.cvFireAntTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvFireAntTitle,
          subTitle: locale.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt1.image(),
          descriptions: [
            locale.cvFireAntContent1,
            locale.cvFireAntContent2,
            locale.cvFireAntContent3,
          ],
        ),
        TimelineDetailModel(
          title: locale.cvFireAntTitle,
          subTitle: locale.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt2.image(),
          descriptions: [
            locale.cvFireAntContent4,
            locale.cvFireAntContent5,
            locale.cvFireAntContent6,
          ],
        ),
        TimelineDetailModel(
          title: locale.cvFireAntTitle,
          subTitle: locale.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt3.image(),
          descriptions: [
            locale.cvFireAntContent7,
            locale.cvFireAntContent8,
            locale.cvFireAntContent9,
          ],
        ),
        TimelineDetailModel(
          title: locale.cvFireAntTitle,
          subTitle: locale.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt4.image(),
          descriptions: [
            locale.cvFireAntContent10,
            locale.cvFireAntContent11,
            locale.cvFireAntContent12,
          ],
        ),
        TimelineDetailModel(
          title: locale.cvFireAntTitle,
          subTitle: locale.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt5.image(),
          descriptions: [
            locale.cvFireAntContent13,
            locale.cvFireAntContent14,
            locale.cvFireAntContent15,
          ],
        ),
        TimelineDetailModel(
          title: locale.cvFireAntTitle,
          subTitle: locale.cvFireAntSubtitle,
          image: Assets.image.imageFireAnt6.image(),
          descriptions: [
            locale.cvFireAntContent16,
          ],
        ),
      ],
    );
  }

  TimelineModel _getMoneytoringTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2024, 12),
      endDate: DateTime(2025, 4),
      label: locale.cvMoneytoringTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvMoneytoringTitle,
          subTitle: locale.cvMoneytoringSubtitle,
          descriptions: [
            locale.cvMoneytoringContent1,
            locale.cvMoneytoringContent2,
            locale.cvMoneytoringContent3,
            locale.cvMoneytoringContent4,
          ],
        ),
      ],
    );
  }

  TimelineModel _getInvestarBackOfficeTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2024, 5),
      endDate: DateTime(2024, 8),
      label: locale.cvInvestarBackOfficeTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvInvestarBackOfficeTitle,
          subTitle: locale.cvInvestarBackOfficeSubtitle,
          descriptions: [
            locale.cvInvestarBackOfficeContent,
          ],
        ),
      ],
    );
  }

  TimelineModel _getInvestarTimeline(AppLocalizations locale) {
    return TimelineModel(
      startDate: DateTime(2023, 4),
      endDate: DateTime(2024, 11),
      label: locale.cvInvestarTitle,
      details: [
        TimelineDetailModel(
          title: locale.cvInvestarTitle,
          subTitle: locale.cvInvestarSubtitle,
          image: Assets.image.imageInvestarKor1.image(),
        ),
        TimelineDetailModel(
          title: 'Daily Coin Page',
          subTitle: locale.cvInvestarDailyCoinSubtitle,
          image: Assets.image.imageDailyCoin.image(),
          descriptions: [
            locale.cvInvestarDailyCoinContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Rising Score Page',
          subTitle: locale.cvInvestarRisingScoreSubtitle,
          image: Assets.image.imageInvestarKor1.image(),
          descriptions: [
            locale.cvInvestarRisingScoreContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Home Carousel Widget',
          subTitle: locale.cvInvestarCarouselSubtitle,
          image: Assets.image.imageInvestarKor1.image(),
          descriptions: [
            locale.cvInvestarCarouselContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Whale Page',
          subTitle: locale.cvInvestarWhaleSubtitle,
          image: Assets.image.imageInvestarKor7.image(),
          descriptions: [
            locale.cvInvestarWhaleContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Favorite Page',
          subTitle: locale.cvInvestarFavoriteSubtitle,
          image: Assets.image.imageInvestarKor2.image(),
          descriptions: [
            locale.cvInvestarFavoriteContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Community Page',
          subTitle: locale.cvInvestarCommunitySubtitle,
          image: Assets.image.imageInvestarKor8.image(),
          descriptions: [
            locale.cvInvestarCommunityContent,
          ],
        ),
        TimelineDetailModel(
          title: 'My Page',
          subTitle: locale.cvInvestarMySubtitle,
          image: Assets.image.imageInvestarMy.image(),
          descriptions: [
            locale.cvInvestarMyContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Search Page',
          subTitle: locale.cvInvestarSearchSubtitle,
          image: Assets.image.imageInvestarKor2.image(),
          descriptions: [
            locale.cvInvestarSearchContent,
          ],
        ),
        TimelineDetailModel(
          title: 'Common',
          subTitle: locale.cvInvestarCommonSubtitle,
          image: Assets.image.imageInvestarKor4.image(),
          descriptions: [
            locale.cvInvestarCommonContent1,
            locale.cvInvestarCommonContent2,
            locale.cvInvestarCommonContent3,
            locale.cvInvestarCommonContent4,
          ],
        ),
      ],
    );
  }
}
