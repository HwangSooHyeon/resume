import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/domain/entities/skills_model.dart';
import 'package:resume/presentation/core/services/dialog_service.dart';
import 'package:resume/presentation/core/widgets/hover_box_widget.dart';
import 'package:resume/presentation/skills/view_models/skill_card_view_model.dart';
import 'package:resume/presentation/skills/widgets/skill_card/components/card_divider.dart';
import 'package:resume/presentation/skills/widgets/skill_card/components/skill_card_description.dart';
import 'package:resume/presentation/skills/widgets/skill_card/components/skill_card_header.dart';
import 'package:resume/presentation/skills/widgets/skill_card/components/skill_card_progress_info.dart';
import 'package:resume/presentation/skills/widgets/skill_card/modal/skill_detail_modal.dart';
import 'package:resume/presentation/skills/widgets/skill_card/models/skill_card_presentation_model.dart';

class SkillCardWidget extends ConsumerWidget {
  final SkillItem skill;

  const SkillCardWidget({required this.skill, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelNotifier =
        ref.read(skillCardViewModelProvider(skill).notifier);

    ref.listen<SkillCardPresentationModel>(
      skillCardViewModelProvider(skill),
      (previous, current) {
        if (previous?.isModalVisible != current.isModalVisible &&
            current.isModalVisible) {
          DialogService.showCustomDialog(
            context: context,
            builder: (context) => SkillDetailModal(skill: skill),
          ).then((_) {
            viewModelNotifier.hideModal();
          });
        }
      },
    );

    return HoverBoxWidget(
      width: 290,
      margin: const EdgeInsets.only(right: 20, bottom: 20),
      padding: const EdgeInsets.all(20),
      borderRadius: 16,
      onTap: skill.detailedDescriptions.isNotEmpty
          ? viewModelNotifier.showModal
          : null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          SkillCardHeader(name: skill.name),
          if (skill.level != null) ...[
            SkillCardProgressInfo(level: skill.level!),
          ] else if (skill.description != null) ...[
            const CardDivider(),
          ],
          if (skill.description != null) ...[
            SkillCardDescription(description: skill.description!),
          ],
        ],
      ),
    );
  }
}
