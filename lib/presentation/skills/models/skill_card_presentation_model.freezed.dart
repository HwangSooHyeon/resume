// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skill_card_presentation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillCardPresentationModel {
  SkillItem get skill;
  bool get isModalVisible;
  double get animationProgress;

  /// Create a copy of SkillCardPresentationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkillCardPresentationModelCopyWith<SkillCardPresentationModel>
      get copyWith =>
          _$SkillCardPresentationModelCopyWithImpl<SkillCardPresentationModel>(
              this as SkillCardPresentationModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkillCardPresentationModel &&
            (identical(other.skill, skill) || other.skill == skill) &&
            (identical(other.isModalVisible, isModalVisible) ||
                other.isModalVisible == isModalVisible) &&
            (identical(other.animationProgress, animationProgress) ||
                other.animationProgress == animationProgress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, skill, isModalVisible, animationProgress);

  @override
  String toString() {
    return 'SkillCardPresentationModel(skill: $skill, isModalVisible: $isModalVisible, animationProgress: $animationProgress)';
  }
}

/// @nodoc
abstract mixin class $SkillCardPresentationModelCopyWith<$Res> {
  factory $SkillCardPresentationModelCopyWith(SkillCardPresentationModel value,
          $Res Function(SkillCardPresentationModel) _then) =
      _$SkillCardPresentationModelCopyWithImpl;
  @useResult
  $Res call({SkillItem skill, bool isModalVisible, double animationProgress});

  $SkillItemCopyWith<$Res> get skill;
}

/// @nodoc
class _$SkillCardPresentationModelCopyWithImpl<$Res>
    implements $SkillCardPresentationModelCopyWith<$Res> {
  _$SkillCardPresentationModelCopyWithImpl(this._self, this._then);

  final SkillCardPresentationModel _self;
  final $Res Function(SkillCardPresentationModel) _then;

  /// Create a copy of SkillCardPresentationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skill = null,
    Object? isModalVisible = null,
    Object? animationProgress = null,
  }) {
    return _then(_self.copyWith(
      skill: null == skill
          ? _self.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as SkillItem,
      isModalVisible: null == isModalVisible
          ? _self.isModalVisible
          : isModalVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      animationProgress: null == animationProgress
          ? _self.animationProgress
          : animationProgress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of SkillCardPresentationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkillItemCopyWith<$Res> get skill {
    return $SkillItemCopyWith<$Res>(_self.skill, (value) {
      return _then(_self.copyWith(skill: value));
    });
  }
}

/// @nodoc

class _SkillCardPresentationModel implements SkillCardPresentationModel {
  const _SkillCardPresentationModel(
      {required this.skill,
      this.isModalVisible = false,
      this.animationProgress = 0.0});

  @override
  final SkillItem skill;
  @override
  @JsonKey()
  final bool isModalVisible;
  @override
  @JsonKey()
  final double animationProgress;

  /// Create a copy of SkillCardPresentationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SkillCardPresentationModelCopyWith<_SkillCardPresentationModel>
      get copyWith => __$SkillCardPresentationModelCopyWithImpl<
          _SkillCardPresentationModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillCardPresentationModel &&
            (identical(other.skill, skill) || other.skill == skill) &&
            (identical(other.isModalVisible, isModalVisible) ||
                other.isModalVisible == isModalVisible) &&
            (identical(other.animationProgress, animationProgress) ||
                other.animationProgress == animationProgress));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, skill, isModalVisible, animationProgress);

  @override
  String toString() {
    return 'SkillCardPresentationModel(skill: $skill, isModalVisible: $isModalVisible, animationProgress: $animationProgress)';
  }
}

/// @nodoc
abstract mixin class _$SkillCardPresentationModelCopyWith<$Res>
    implements $SkillCardPresentationModelCopyWith<$Res> {
  factory _$SkillCardPresentationModelCopyWith(
          _SkillCardPresentationModel value,
          $Res Function(_SkillCardPresentationModel) _then) =
      __$SkillCardPresentationModelCopyWithImpl;
  @override
  @useResult
  $Res call({SkillItem skill, bool isModalVisible, double animationProgress});

  @override
  $SkillItemCopyWith<$Res> get skill;
}

/// @nodoc
class __$SkillCardPresentationModelCopyWithImpl<$Res>
    implements _$SkillCardPresentationModelCopyWith<$Res> {
  __$SkillCardPresentationModelCopyWithImpl(this._self, this._then);

  final _SkillCardPresentationModel _self;
  final $Res Function(_SkillCardPresentationModel) _then;

  /// Create a copy of SkillCardPresentationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? skill = null,
    Object? isModalVisible = null,
    Object? animationProgress = null,
  }) {
    return _then(_SkillCardPresentationModel(
      skill: null == skill
          ? _self.skill
          : skill // ignore: cast_nullable_to_non_nullable
              as SkillItem,
      isModalVisible: null == isModalVisible
          ? _self.isModalVisible
          : isModalVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      animationProgress: null == animationProgress
          ? _self.animationProgress
          : animationProgress // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of SkillCardPresentationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SkillItemCopyWith<$Res> get skill {
    return $SkillItemCopyWith<$Res>(_self.skill, (value) {
      return _then(_self.copyWith(skill: value));
    });
  }
}

// dart format on
