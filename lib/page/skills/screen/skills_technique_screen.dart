import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:resume/page/skills/widget/skill_card_widget.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/extension/locale_extension.dart';
import 'package:resume/util/function/duration.dart';
import 'package:resume/widget/common/fade_slide_widget.dart';

class SkillsTechniqueScreen extends StatelessWidget {
  const SkillsTechniqueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              SkillCardWidget(
                'Pagination',
                description:
                    context.locale!.skillsTechniquePaginationDescription,
                detailedDescriptions:
                    context.locale!.paginationDetailedDescriptions,
              ),
              SkillCardWidget(
                'Infinite Scroll',
                description:
                    context.locale!.skillsTechniqueInfiniteScrollDescription,
                detailedDescriptions:
                    context.locale!.infiniteScrollDetailedDescriptions,
              ),
              SkillCardWidget(
                'Optimistic Response',
                description: context
                    .locale!.skillsTechniqueOptimisticResponseDescription,
                detailedDescriptions:
                    context.locale!.optimisticResponseDetailedDescriptions,
              ),
              SkillCardWidget(
                'Throttling & Debounce',
                description: context
                    .locale!.skillsTechniqueThrottlingDebounceDescription,
                detailedDescriptions:
                    context.locale!.throttlingDebounceDetailedDescriptions,
              ),
              SkillCardWidget(
                'Intersection Observer',
                description: context
                    .locale!.skillsTechniqueIntersectionObserverDescription,
                detailedDescriptions:
                    context.locale!.intersectionObserverDetailedDescriptions,
              ),
              SkillCardWidget(
                'Sorting',
                description: context.locale!.skillsTechniqueSortingDescription,
                detailedDescriptions:
                    context.locale!.sortingDetailedDescriptions,
              ),
              SkillCardWidget(
                'Animation',
                description:
                    context.locale!.skillsTechniqueAnimationDescription,
                detailedDescriptions:
                    context.locale!.animationDetailedDescriptions,
              ),
              SkillCardWidget(
                'Code Generation',
                description:
                    context.locale!.skillsTechniqueCodeGenerationDescription,
                detailedDescriptions:
                    context.locale!.codeGenerationDetailedDescriptions,
              ),
              SkillCardWidget(
                'Sliver Widgets & NestedScrollView',
                description: context.locale!.skillsTechniqueSliverDescription,
                detailedDescriptions:
                    context.locale!.sliverDetailedDescriptions,
              ),
              SkillCardWidget(
                'ReorderableListView & Dissmisible',
                description: context.locale!.skillsTechniqueReorderDescription,
                detailedDescriptions:
                    context.locale!.reorderDetailedDescriptions,
              ),
              SkillCardWidget(
                'Unit Test',
                description: context.locale!.skillsTechniqueUnitTestDescription,
                detailedDescriptions:
                    context.locale!.unitTestDetailedDescriptions,
              ),
            ]
                .mapIndexed((i, e) => FadeSlideWidget(
                      delay: animationDelay(order: i),
                      child: e,
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
