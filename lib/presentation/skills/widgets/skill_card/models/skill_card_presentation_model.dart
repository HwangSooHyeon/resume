import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resume/domain/entities/skills_model.dart';

part 'skill_card_presentation_model.freezed.dart';

@freezed
abstract class SkillCardPresentationModel with _$SkillCardPresentationModel {
  const factory SkillCardPresentationModel({
    required SkillItem skill,
    @Default(false) bool isModalVisible,
    @Default(0.0) double animationProgress,
  }) = _SkillCardPresentationModel;
}
