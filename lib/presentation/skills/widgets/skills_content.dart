import 'package:flutter/material.dart';
import 'package:resume/domain/entities/skills_model.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';
import 'package:resume/presentation/skills/widgets/skill_card/skill_card_widget.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:collection/collection.dart';

class SkillsContent extends StatelessWidget {
  final List<SkillItem> items;

  const SkillsContent({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: items
                .mapIndexed(
                  (i, item) => FadeSlideWidget(
                    delay: animationDelay(order: i),
                    child: SkillCardWidget(
                      skill: item,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
