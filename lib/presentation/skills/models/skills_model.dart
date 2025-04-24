import 'package:freezed_annotation/freezed_annotation.dart';

part 'skills_model.freezed.dart';

@freezed
abstract class SkillItem with _$SkillItem {
  const SkillItem._();

  const factory SkillItem({
    required String name,
    double? level,
    String? description,
    @Default([]) List<String> detailedDescriptions,
  }) = _SkillItem;
}

@freezed
abstract class SkillCategory with _$SkillCategory {
  const SkillCategory._();

  const factory SkillCategory({
    required String name,
    required List<SkillItem> skills,
  }) = _SkillCategory;
}
