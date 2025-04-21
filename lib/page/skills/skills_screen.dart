import 'package:flutter/material.dart';
import 'package:resume/page/skills/screen/skills_library_screen.dart';
import 'package:resume/page/skills/screen/skills_programming_language_screen.dart';
import 'package:resume/page/skills/screen/skills_technique_screen.dart';
import 'package:resume/page/skills/screen/skills_tools_screen.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/function/duration.dart';
import 'package:resume/util/theme/custom_text_theme.dart';
import 'package:resume/widget/common/fade_slide_widget.dart';

class SkillsScreen extends StatefulWidget {
  static const String path = '/skills';
  const SkillsScreen({super.key});

  @override
  State<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends State<SkillsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> _tabs = [
    'Programming Language',
    'Flutter Library',
    'Technique',
    'Tools'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeSlideWidget(
      delay: animationDelay(order: 0),
      child: Container(
        height: context.height - 164,
        width: context.width,
        padding: EdgeInsets.symmetric(horizontal: 25 + context.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32.0),
              child: Text(
                'Skills',
                style: CustomTextTheme.boldTextStyle(
                  fontSize: 48,
                  color: context.colorScheme.onSurface,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: _tabs.asMap().entries.map((entry) {
                  final int index = entry.key;
                  final String tab = entry.value;
                  final bool isSelected = _tabController.index == index;
                  return MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        _tabController.animateTo(index);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 16.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 12.0),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? context.colorScheme.primary
                              : context.colorScheme.surface,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withValues(alpha: isSelected ? 0.16 : 0.08),
                              offset: const Offset(2, 4),
                              blurRadius: 20,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Text(
                          tab,
                          style: isSelected
                              ? CustomTextTheme.boldTextStyle(
                                  fontSize: 16,
                                  color: context.colorScheme.onPrimary,
                                )
                              : CustomTextTheme.regularTextStyle(
                                  fontSize: 16,
                                  color: context.colorScheme.onSurface
                                      .withValues(alpha: 0.8),
                                ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  SkillsProgrammingLanguageScreen(),
                  SkillsLibraryScreen(),
                  SkillsTechniqueScreen(),
                  SkillsToolScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
