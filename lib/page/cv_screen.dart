import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/model/enum/cv_enum.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/page/cv/widget/timeline/timeline.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class CvScreen extends StatefulWidget {
  static const String path = '/cv';
  const CvScreen({super.key});

  @override
  State<CvScreen> createState() => _CvScreenState();
}

class _CvScreenState extends State<CvScreen> with TickerProviderStateMixin {
  final _pageController = PageController();
  late final _animationController = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  );
  late final _offsetAnimation = Tween(
    begin: const Offset(0, 1),
    end: const Offset(0, 0.0),
  ).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: Curves.decelerate,
    ),
  );

  Widget? _currentScreen = CvEnum.fireAnt.widget;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.reset();
    _animationController.forward();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Wrap(
        runSpacing: 30,
        children: [
          SizedBox(
            width: context.width - 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time Line',
                  style: CustomTextTheme.boldTextStyle(fontSize: 32),
                ),
                const Gap(20),
                Timeline.defaultDate(
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
                ),
                const Gap(10),
                Timeline(
                  timelines: [
                    TimelineModel(
                      startDate: DateTime(2023, 4),
                      endDate: DateTime(2025, 4),
                      label: context.locale!.cvDirectionalTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.directional.widget;
                        });
                      },
                    ),
                    TimelineModel(
                      startDate: DateTime(2022, 10),
                      endDate: DateTime(2022, 12),
                      label: context.locale!.cvWoowaTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.woowa.widget;
                        });
                      },
                    ),
                    TimelineModel(
                      startDate: DateTime(2021, 11),
                      endDate: DateTime(2022, 8),
                      label: context.locale!.cvHectoFinancialTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.hecto.widget;
                        });
                      },
                    ),
                    TimelineModel(
                      startDate: DateTime(2020, 12),
                      endDate: DateTime(2021, 6),
                      label: context.locale!.cvItAcademyTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.itAcademy.widget;
                        });
                      },
                    ),
                    TimelineModel(
                      startDate: DateTime(2020, 3),
                      endDate: DateTime(2020, 9),
                      label: context.locale!.cvGraduateSchoolTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.graduateSchool.widget;
                        });
                      },
                    ),
                    TimelineModel(
                      startDate: DateTime(2020, 1),
                      endDate: DateTime(2020, 2),
                      label: context.locale!.cvUniversityTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.university.widget;
                        });
                      },
                    ),
                  ],
                ),
                const Gap(4),
                Timeline(
                  timelines: [
                    TimelineModel(
                      startDate: DateTime(2023, 8),
                      endDate: DateTime(2023, 12),
                      label: context.locale!.cvSblTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.sbl.widget;
                        });
                      },
                    ),
                    TimelineModel(
                      startDate: DateTime(2024, 6),
                      endDate: DateTime(2024, 11),
                      label: context.locale!.cvFireAntTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.fireAnt.widget;
                        });
                      },
                    ),
                    TimelineModel(
                      startDate: DateTime(2024, 12),
                      endDate: DateTime(2025, 4),
                      label: context.locale!.cvMoneytoringTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.moneytoring.widget;
                        });
                      },
                    ),
                  ],
                ),
                const Gap(4),
                Timeline(
                  timelines: [
                    TimelineModel(
                      startDate: DateTime(2024, 5),
                      endDate: DateTime(2024, 8),
                      label: context.locale!.cvInvestarBackOfficeTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.investarBackOffice.widget;
                        });
                      },
                    ),
                  ],
                ),
                const Gap(4),
                Timeline(
                  timelines: [
                    TimelineModel(
                      startDate: DateTime(2023, 4),
                      endDate: DateTime(2024, 11),
                      label: context.locale!.cvInvestarTitle,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.investar.widget;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Wrap(
            children: [
              SizedBox(
                width: context.width - 200,
                height: context.height - 184 - 18 - 250 - 40,
                child: SlideTransition(
                  position: _offsetAnimation,
                  child: _currentScreen,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
