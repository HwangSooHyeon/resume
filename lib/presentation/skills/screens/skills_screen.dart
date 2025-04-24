import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';
import 'package:resume/presentation/skills/view_models/skills_view_model.dart';
import 'package:resume/presentation/skills/widgets/category_tab_bar.dart';
import 'package:resume/presentation/skills/widgets/skills_content.dart';

class SkillsScreen extends ConsumerStatefulWidget {
  static const String path = '/skills';
  const SkillsScreen({super.key});

  @override
  ConsumerState<SkillsScreen> createState() => _SkillsScreenState();
}

class _SkillsScreenState extends ConsumerState<SkillsScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    final categories = ref.read(skillsViewModelProvider).categories;

    _tabController = TabController(
      length: categories.length,
      vsync: this,
    );

    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    if (_tabController.indexIsChanging) {
      ref
          .read(skillsViewModelProvider.notifier)
          .selectCategory(_tabController.index);
    }
  }

  void _syncTabWithViewModel() {
    final selectedIndex =
        ref.read(skillsViewModelProvider).selectedCategoryIndex;
    if (_tabController.index != selectedIndex) {
      _tabController.animateTo(selectedIndex);
    }
  }

  @override
  void didUpdateWidget(SkillsScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _syncTabWithViewModel();
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Text(
        'Skills',
        style: CustomTextTheme.boldTextStyle(
          fontSize: 48,
          color: context.colorScheme.onSurface,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final skillsVM = ref.watch(skillsViewModelProvider);
    final skillsNotifier = ref.read(skillsViewModelProvider.notifier);

    ref.listen<SkillsState>(
      skillsViewModelProvider,
      (previous, current) {
        if (previous?.selectedCategoryIndex != current.selectedCategoryIndex) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (_tabController.index != current.selectedCategoryIndex) {
              _tabController.animateTo(current.selectedCategoryIndex);
            }
          });
        }
      },
    );

    return FadeSlideWidget(
      delay: animationDelay(order: 0),
      child: Container(
        height: context.height - 164,
        width: context.width,
        padding: EdgeInsets.symmetric(horizontal: 25 + context.width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            CategoryTabBar(
              categories: skillsVM.categories,
              selectedIndex: skillsVM.selectedCategoryIndex,
              onCategorySelected: skillsNotifier.selectCategory,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                clipBehavior: Clip.none,
                children: [
                  SkillsContent(items: skillsVM.programmingLanguages),
                  SkillsContent(items: skillsVM.libraries),
                  SkillsContent(items: skillsVM.techniques),
                  SkillsContent(items: skillsVM.tools),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
