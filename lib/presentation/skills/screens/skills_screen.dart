import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/skills/screens/skills_library_screen.dart';
import 'package:resume/presentation/skills/screens/skills_programming_language_screen.dart';
import 'package:resume/presentation/skills/screens/skills_technique_screen.dart';
import 'package:resume/presentation/skills/screens/skills_tools_screen.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';
import 'package:resume/presentation/core/widgets/hover_box_widget.dart';

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
                children: _tabs.mapIndexed((i, e) {
                  final bool isSelected = _tabController.index == i;
                  return HoverBoxWidget(
                    onTap: () => _tabController.animateTo(i),
                    margin: const EdgeInsets.only(right: 16.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 12.0),
                    backgroundColor: isSelected
                        ? context.colorScheme.primary
                        : context.colorScheme.surface,
                    borderRadius: 32,
                    child: Text(
                      e,
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
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                clipBehavior: Clip.none,
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
