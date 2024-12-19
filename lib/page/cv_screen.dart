import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/model/enum/cv_enum.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/page/cv/widget/timeline.dart';
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
    begin: Offset(1, 0),
    end: Offset(0, 0.0),
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
          Container(
            width: context.width - 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Time Line',
                  style: CustomTextTheme.boldTextStyle(fontSize: 32),
                ),
                const Gap(20),
                Timeline(
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
                  ],
                ),
                const Gap(10),
                Timeline(
                  timelines: [
                    TimelineModel(
                      startDate: DateTime(2023, 4),
                      endDate: DateTime(2024, 12),
                      color: Colors.blueAccent,
                      label: '디렉셔널',
                      toolTip: 'directional',
                    ),
                    TimelineModel(
                      startDate: DateTime(2022, 10),
                      endDate: DateTime(2022, 12),
                      color: Colors.lightBlue,
                      label: '우아한테크코스',
                      toolTip: 'woowa',
                    ),
                    TimelineModel(
                      startDate: DateTime(2021, 11),
                      endDate: DateTime(2022, 9),
                      color: Colors.yellow[900]!,
                      label: '헥토 파이낸셜',
                      toolTip: 'hecto',
                    ),
                    TimelineModel(
                      startDate: DateTime(2020, 12),
                      endDate: DateTime(2021, 6),
                      color: Colors.green,
                      label: 'IT 교육',
                      toolTip: 'IT Academy',
                    ),
                    TimelineModel(
                      startDate: DateTime(2020, 1),
                      endDate: DateTime(2020, 9),
                      color: Color(0xffDC143C),
                      label: '대학원',
                      toolTip: 'graduate school',
                    ),
                  ],
                ),
                Timeline(
                  timelines: [
                    TimelineModel(
                      startDate: DateTime(2023, 8),
                      endDate: DateTime(2023, 12),
                      color: Color(0xffDC143C),
                      label: context.locale!.cvSbl,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.sbl.widget;
                        });
                      },
                    ),
                    TimelineModel(
                      startDate: DateTime(2024, 6),
                      endDate: DateTime(2024, 11),
                      color: Color(0xffDC143C),
                      label: context.locale!.cvFireAnt,
                      onTap: () {
                        setState(() {
                          _currentScreen = CvEnum.fireAnt.widget;
                        });
                      },
                    ),
                  ],
                ),
                Timeline(
                  timelines: [
                    TimelineModel(
                      startDate: DateTime(2024, 5),
                      endDate: DateTime(2024, 7),
                      color: Color(0xffDC143C),
                      label: context.locale!.cvInvestarBackOffice,
                    ),
                  ],
                ),
                Timeline(
                  timelines: [
                    TimelineModel(
                      startDate: DateTime(2023, 4),
                      endDate: DateTime(2024, 11),
                      color: Color(0xffDC143C),
                      label: context.locale!.cvInvestar,
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
                height: context.height - 184 - 18 - 250 - 30,
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
