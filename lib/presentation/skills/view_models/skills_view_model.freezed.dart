// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skills_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SkillsState {
  List<String> get categories;
  int get selectedCategoryIndex;
  List<SkillItem> get programmingLanguages;
  List<SkillItem> get libraries;
  List<SkillItem> get techniques;
  List<SkillItem> get tools;

  /// Create a copy of SkillsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SkillsStateCopyWith<SkillsState> get copyWith =>
      _$SkillsStateCopyWithImpl<SkillsState>(this as SkillsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SkillsState &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            const DeepCollectionEquality()
                .equals(other.programmingLanguages, programmingLanguages) &&
            const DeepCollectionEquality().equals(other.libraries, libraries) &&
            const DeepCollectionEquality()
                .equals(other.techniques, techniques) &&
            const DeepCollectionEquality().equals(other.tools, tools));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categories),
      selectedCategoryIndex,
      const DeepCollectionEquality().hash(programmingLanguages),
      const DeepCollectionEquality().hash(libraries),
      const DeepCollectionEquality().hash(techniques),
      const DeepCollectionEquality().hash(tools));

  @override
  String toString() {
    return 'SkillsState(categories: $categories, selectedCategoryIndex: $selectedCategoryIndex, programmingLanguages: $programmingLanguages, libraries: $libraries, techniques: $techniques, tools: $tools)';
  }
}

/// @nodoc
abstract mixin class $SkillsStateCopyWith<$Res> {
  factory $SkillsStateCopyWith(
          SkillsState value, $Res Function(SkillsState) _then) =
      _$SkillsStateCopyWithImpl;
  @useResult
  $Res call(
      {List<String> categories,
      int selectedCategoryIndex,
      List<SkillItem> programmingLanguages,
      List<SkillItem> libraries,
      List<SkillItem> techniques,
      List<SkillItem> tools});
}

/// @nodoc
class _$SkillsStateCopyWithImpl<$Res> implements $SkillsStateCopyWith<$Res> {
  _$SkillsStateCopyWithImpl(this._self, this._then);

  final SkillsState _self;
  final $Res Function(SkillsState) _then;

  /// Create a copy of SkillsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? selectedCategoryIndex = null,
    Object? programmingLanguages = null,
    Object? libraries = null,
    Object? techniques = null,
    Object? tools = null,
  }) {
    return _then(_self.copyWith(
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _self.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      programmingLanguages: null == programmingLanguages
          ? _self.programmingLanguages
          : programmingLanguages // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
      libraries: null == libraries
          ? _self.libraries
          : libraries // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
      techniques: null == techniques
          ? _self.techniques
          : techniques // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
      tools: null == tools
          ? _self.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
    ));
  }
}

/// @nodoc

class _SkillsState implements SkillsState {
  const _SkillsState(
      {required final List<String> categories,
      this.selectedCategoryIndex = 0,
      final List<SkillItem> programmingLanguages = const [],
      final List<SkillItem> libraries = const [],
      final List<SkillItem> techniques = const [],
      final List<SkillItem> tools = const []})
      : _categories = categories,
        _programmingLanguages = programmingLanguages,
        _libraries = libraries,
        _techniques = techniques,
        _tools = tools;

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final int selectedCategoryIndex;
  final List<SkillItem> _programmingLanguages;
  @override
  @JsonKey()
  List<SkillItem> get programmingLanguages {
    if (_programmingLanguages is EqualUnmodifiableListView)
      return _programmingLanguages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_programmingLanguages);
  }

  final List<SkillItem> _libraries;
  @override
  @JsonKey()
  List<SkillItem> get libraries {
    if (_libraries is EqualUnmodifiableListView) return _libraries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_libraries);
  }

  final List<SkillItem> _techniques;
  @override
  @JsonKey()
  List<SkillItem> get techniques {
    if (_techniques is EqualUnmodifiableListView) return _techniques;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_techniques);
  }

  final List<SkillItem> _tools;
  @override
  @JsonKey()
  List<SkillItem> get tools {
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tools);
  }

  /// Create a copy of SkillsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SkillsStateCopyWith<_SkillsState> get copyWith =>
      __$SkillsStateCopyWithImpl<_SkillsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SkillsState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.selectedCategoryIndex, selectedCategoryIndex) ||
                other.selectedCategoryIndex == selectedCategoryIndex) &&
            const DeepCollectionEquality()
                .equals(other._programmingLanguages, _programmingLanguages) &&
            const DeepCollectionEquality()
                .equals(other._libraries, _libraries) &&
            const DeepCollectionEquality()
                .equals(other._techniques, _techniques) &&
            const DeepCollectionEquality().equals(other._tools, _tools));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      selectedCategoryIndex,
      const DeepCollectionEquality().hash(_programmingLanguages),
      const DeepCollectionEquality().hash(_libraries),
      const DeepCollectionEquality().hash(_techniques),
      const DeepCollectionEquality().hash(_tools));

  @override
  String toString() {
    return 'SkillsState(categories: $categories, selectedCategoryIndex: $selectedCategoryIndex, programmingLanguages: $programmingLanguages, libraries: $libraries, techniques: $techniques, tools: $tools)';
  }
}

/// @nodoc
abstract mixin class _$SkillsStateCopyWith<$Res>
    implements $SkillsStateCopyWith<$Res> {
  factory _$SkillsStateCopyWith(
          _SkillsState value, $Res Function(_SkillsState) _then) =
      __$SkillsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String> categories,
      int selectedCategoryIndex,
      List<SkillItem> programmingLanguages,
      List<SkillItem> libraries,
      List<SkillItem> techniques,
      List<SkillItem> tools});
}

/// @nodoc
class __$SkillsStateCopyWithImpl<$Res> implements _$SkillsStateCopyWith<$Res> {
  __$SkillsStateCopyWithImpl(this._self, this._then);

  final _SkillsState _self;
  final $Res Function(_SkillsState) _then;

  /// Create a copy of SkillsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
    Object? selectedCategoryIndex = null,
    Object? programmingLanguages = null,
    Object? libraries = null,
    Object? techniques = null,
    Object? tools = null,
  }) {
    return _then(_SkillsState(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedCategoryIndex: null == selectedCategoryIndex
          ? _self.selectedCategoryIndex
          : selectedCategoryIndex // ignore: cast_nullable_to_non_nullable
              as int,
      programmingLanguages: null == programmingLanguages
          ? _self._programmingLanguages
          : programmingLanguages // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
      libraries: null == libraries
          ? _self._libraries
          : libraries // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
      techniques: null == techniques
          ? _self._techniques
          : techniques // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
      tools: null == tools
          ? _self._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<SkillItem>,
    ));
  }
}

// dart format on
