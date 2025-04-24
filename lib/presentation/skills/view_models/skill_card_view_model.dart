import 'package:resume/presentation/skills/models/skills_model.dart';
import 'package:resume/presentation/skills/models/skill_card_presentation_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'skill_card_view_model.g.dart';

@riverpod
class SkillCardViewModel extends _$SkillCardViewModel {
  @override
  SkillCardPresentationModel build(SkillItem skill) {
    return SkillCardPresentationModel(skill: skill);
  }

  void showModal() {
    state = state.copyWith(isModalVisible: true);
  }

  void hideModal() {
    state = state.copyWith(isModalVisible: false);
  }

  void updateAnimationProgress(double progress) {
    state = state.copyWith(animationProgress: progress);
  }
}
