// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skills_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillItem {
  String get name;
  double? get level;
  String? get description;
  List<String> get detailedDescriptions;

  /// Create a copy of SkillItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkillItemCopyWith<SkillItem> get copyWith =>
      _$SkillItemCopyWithImpl<SkillItem>(this as SkillItem, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkillItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other.detailedDescriptions, detailedDescriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, level, description,
      const DeepCollectionEquality().hash(detailedDescriptions));

  @override
  String toString() {
    return 'SkillItem(name: $name, level: $level, description: $description, detailedDescriptions: $detailedDescriptions)';
  }
}

/// @nodoc
abstract mixin class $SkillItemCopyWith<$Res> {
  factory $SkillItemCopyWith(SkillItem value, $Res Function(SkillItem) _then) =
      _$SkillItemCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      double? level,
      String? description,
      List<String> detailedDescriptions});
}

/// @nodoc
class _$SkillItemCopyWithImpl<$Res> implements $SkillItemCopyWith<$Res> {
  _$SkillItemCopyWithImpl(this._self, this._then);

  final SkillItem _self;
  final $Res Function(SkillItem) _then;

  /// Create a copy of SkillItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? level = freezed,
    Object? description = freezed,
    Object? detailedDescriptions = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      detailedDescriptions: null == detailedDescriptions
          ? _self.detailedDescriptions
          : detailedDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _SkillItem extends SkillItem {
  const _SkillItem(
      {required this.name,
      this.level,
      this.description,
      final List<String> detailedDescriptions = const []})
      : _detailedDescriptions = detailedDescriptions,
        super._();

  @override
  final String name;
  @override
  final double? level;
  @override
  final String? description;
  final List<String> _detailedDescriptions;
  @override
  @JsonKey()
  List<String> get detailedDescriptions {
    if (_detailedDescriptions is EqualUnmodifiableListView)
      return _detailedDescriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detailedDescriptions);
  }

  /// Create a copy of SkillItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SkillItemCopyWith<_SkillItem> get copyWith =>
      __$SkillItemCopyWithImpl<_SkillItem>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillItem &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._detailedDescriptions, _detailedDescriptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, level, description,
      const DeepCollectionEquality().hash(_detailedDescriptions));

  @override
  String toString() {
    return 'SkillItem(name: $name, level: $level, description: $description, detailedDescriptions: $detailedDescriptions)';
  }
}

/// @nodoc
abstract mixin class _$SkillItemCopyWith<$Res>
    implements $SkillItemCopyWith<$Res> {
  factory _$SkillItemCopyWith(
          _SkillItem value, $Res Function(_SkillItem) _then) =
      __$SkillItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      double? level,
      String? description,
      List<String> detailedDescriptions});
}

/// @nodoc
class __$SkillItemCopyWithImpl<$Res> implements _$SkillItemCopyWith<$Res> {
  __$SkillItemCopyWithImpl(this._self, this._then);

  final _SkillItem _self;
  final $Res Function(_SkillItem) _then;

  /// Create a copy of SkillItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? level = freezed,
    Object? description = freezed,
    Object? detailedDescriptions = null,
  }) {
    return _then(_SkillItem(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      detailedDescriptions: null == detailedDescriptions
          ? _self._detailedDescriptions
          : detailedDescriptions // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$SkillCategory {
  String get name;
  List<SkillItem> get skills;

  /// Create a copy of SkillCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkillCategoryCopyWith<SkillCategory> get copyWith =>
      _$SkillCategoryCopyWithImpl<SkillCategory>(
          this as SkillCategory, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkillCategory &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.skills, skills));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(skills));

  @override
  String toString() {
    return 'SkillCategory(name: $name, skills: $skills)';
  }
}

/// @nodoc
abstract mixin class $SkillCategoryCopyWith<$Res> {
  factory $SkillCategoryCopyWith(
          SkillCategory value, $Res Function(SkillCategory) _then) =
      _$SkillCategoryCopyWithImpl;
  @useResult
  $Res call({String name, List<SkillItem> skills});
}

/// @nodoc
class _$SkillCategoryCopyWithImpl<$Res>
    implements $SkillCategoryCopyWith<$Res> {
  _$SkillCategoryCopyWithImpl(this._self, this._then);

  final SkillCategory _self;
  final $Res Function(SkillCategory) _then;

  /// Create a copy of SkillCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? skills = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _self.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
    ));
  }
}

/// @nodoc

class _SkillCategory extends SkillCategory {
  const _SkillCategory(
      {required this.name, required final List<SkillItem> skills})
      : _skills = skills,
        super._();

  @override
  final String name;
  final List<SkillItem> _skills;
  @override
  List<SkillItem> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  /// Create a copy of SkillCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SkillCategoryCopyWith<_SkillCategory> get copyWith =>
      __$SkillCategoryCopyWithImpl<_SkillCategory>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillCategory &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._skills, _skills));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_skills));

  @override
  String toString() {
    return 'SkillCategory(name: $name, skills: $skills)';
  }
}

/// @nodoc
abstract mixin class _$SkillCategoryCopyWith<$Res>
    implements $SkillCategoryCopyWith<$Res> {
  factory _$SkillCategoryCopyWith(
          _SkillCategory value, $Res Function(_SkillCategory) _then) =
      __$SkillCategoryCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<SkillItem> skills});
}

/// @nodoc
class __$SkillCategoryCopyWithImpl<$Res>
    implements _$SkillCategoryCopyWith<$Res> {
  __$SkillCategoryCopyWithImpl(this._self, this._then);

  final _SkillCategory _self;
  final $Res Function(_SkillCategory) _then;

  /// Create a copy of SkillCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? skills = null,
  }) {
    return _then(_SkillCategory(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _self._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
    ));
  }
}

// dart format on
