import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/presentation/skills/models/skills_model.dart';
import 'package:resume/presentation/skills/view_models/skill_card_view_model.dart';
import 'package:resume/presentation/skills/widgets/skill_card/modal/skill_modal_body.dart';
import 'package:resume/presentation/skills/widgets/skill_card/modal/skill_modal_header.dart';

class SkillDetailModal extends ConsumerWidget {
  final SkillItem skill;

  const SkillDetailModal({required this.skill, super.key});

  Widget _buildModalContent(
      BuildContext context, SkillCardViewModel viewModel) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          constraints: BoxConstraints(
            maxWidth: 600,
            maxHeight: context.height * 0.8,
          ),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(51),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SkillModalHeader(
                    name: skill.name,
                    onClose: () {
                      context.pop();
                    }),
                SkillModalBody(skill: skill),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelNotifier =
        ref.read(skillCardViewModelProvider(skill).notifier);

    return _buildModalContent(context, viewModelNotifier);
  }
}
