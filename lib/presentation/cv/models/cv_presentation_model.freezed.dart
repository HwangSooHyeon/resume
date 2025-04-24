// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cv_presentation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CvPresentationState {
  List<TimelineModel> get yearLabels;
  List<TimelineModel> get workExperience;
  List<TimelineModel> get projectExperience1;
  List<TimelineModel> get projectExperience2;
  List<TimelineModel> get projectExperience3;
  List<TimelineModel> get educationExperience;
  bool get isLoading;
  String? get errorMessage;
  TimelineModel? get selectedTimeline;

  /// Create a copy of CvPresentationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CvPresentationStateCopyWith<CvPresentationState> get copyWith =>
      _$CvPresentationStateCopyWithImpl<CvPresentationState>(
          this as CvPresentationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CvPresentationState &&
            const DeepCollectionEquality()
                .equals(other.yearLabels, yearLabels) &&
            const DeepCollectionEquality()
                .equals(other.workExperience, workExperience) &&
            const DeepCollectionEquality()
                .equals(other.projectExperience1, projectExperience1) &&
            const DeepCollectionEquality()
                .equals(other.projectExperience2, projectExperience2) &&
            const DeepCollectionEquality()
                .equals(other.projectExperience3, projectExperience3) &&
            const DeepCollectionEquality()
                .equals(other.educationExperience, educationExperience) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedTimeline, selectedTimeline) ||
                other.selectedTimeline == selectedTimeline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(yearLabels),
      const DeepCollectionEquality().hash(workExperience),
      const DeepCollectionEquality().hash(projectExperience1),
      const DeepCollectionEquality().hash(projectExperience2),
      const DeepCollectionEquality().hash(projectExperience3),
      const DeepCollectionEquality().hash(educationExperience),
      isLoading,
      errorMessage,
      selectedTimeline);

  @override
  String toString() {
    return 'CvPresentationState(yearLabels: $yearLabels, workExperience: $workExperience, projectExperience1: $projectExperience1, projectExperience2: $projectExperience2, projectExperience3: $projectExperience3, educationExperience: $educationExperience, isLoading: $isLoading, errorMessage: $errorMessage, selectedTimeline: $selectedTimeline)';
  }
}

/// @nodoc
abstract mixin class $CvPresentationStateCopyWith<$Res> {
  factory $CvPresentationStateCopyWith(
          CvPresentationState value, $Res Function(CvPresentationState) _then) =
      _$CvPresentationStateCopyWithImpl;
  @useResult
  $Res call(
      {List<TimelineModel> yearLabels,
      List<TimelineModel> workExperience,
      List<TimelineModel> projectExperience1,
      List<TimelineModel> projectExperience2,
      List<TimelineModel> projectExperience3,
      List<TimelineModel> educationExperience,
      bool isLoading,
      String? errorMessage,
      TimelineModel? selectedTimeline});
}

/// @nodoc
class _$CvPresentationStateCopyWithImpl<$Res>
    implements $CvPresentationStateCopyWith<$Res> {
  _$CvPresentationStateCopyWithImpl(this._self, this._then);

  final CvPresentationState _self;
  final $Res Function(CvPresentationState) _then;

  /// Create a copy of CvPresentationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yearLabels = null,
    Object? workExperience = null,
    Object? projectExperience1 = null,
    Object? projectExperience2 = null,
    Object? projectExperience3 = null,
    Object? educationExperience = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? selectedTimeline = freezed,
  }) {
    return _then(_self.copyWith(
      yearLabels: null == yearLabels
          ? _self.yearLabels
          : yearLabels // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      workExperience: null == workExperience
          ? _self.workExperience
          : workExperience // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      projectExperience1: null == projectExperience1
          ? _self.projectExperience1
          : projectExperience1 // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      projectExperience2: null == projectExperience2
          ? _self.projectExperience2
          : projectExperience2 // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      projectExperience3: null == projectExperience3
          ? _self.projectExperience3
          : projectExperience3 // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      educationExperience: null == educationExperience
          ? _self.educationExperience
          : educationExperience // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTimeline: freezed == selectedTimeline
          ? _self.selectedTimeline
          : selectedTimeline // ignore: cast_nullable_to_non_nullable
              as TimelineModel?,
    ));
  }
}

/// @nodoc

class _CvPresentationState implements CvPresentationState {
  const _CvPresentationState(
      {final List<TimelineModel> yearLabels = const [],
      final List<TimelineModel> workExperience = const [],
      final List<TimelineModel> projectExperience1 = const [],
      final List<TimelineModel> projectExperience2 = const [],
      final List<TimelineModel> projectExperience3 = const [],
      final List<TimelineModel> educationExperience = const [],
      this.isLoading = false,
      this.errorMessage = null,
      this.selectedTimeline})
      : _yearLabels = yearLabels,
        _workExperience = workExperience,
        _projectExperience1 = projectExperience1,
        _projectExperience2 = projectExperience2,
        _projectExperience3 = projectExperience3,
        _educationExperience = educationExperience;

  final List<TimelineModel> _yearLabels;
  @override
  @JsonKey()
  List<TimelineModel> get yearLabels {
    if (_yearLabels is EqualUnmodifiableListView) return _yearLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearLabels);
  }

  final List<TimelineModel> _workExperience;
  @override
  @JsonKey()
  List<TimelineModel> get workExperience {
    if (_workExperience is EqualUnmodifiableListView) return _workExperience;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workExperience);
  }

  final List<TimelineModel> _projectExperience1;
  @override
  @JsonKey()
  List<TimelineModel> get projectExperience1 {
    if (_projectExperience1 is EqualUnmodifiableListView)
      return _projectExperience1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectExperience1);
  }

  final List<TimelineModel> _projectExperience2;
  @override
  @JsonKey()
  List<TimelineModel> get projectExperience2 {
    if (_projectExperience2 is EqualUnmodifiableListView)
      return _projectExperience2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectExperience2);
  }

  final List<TimelineModel> _projectExperience3;
  @override
  @JsonKey()
  List<TimelineModel> get projectExperience3 {
    if (_projectExperience3 is EqualUnmodifiableListView)
      return _projectExperience3;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_projectExperience3);
  }

  final List<TimelineModel> _educationExperience;
  @override
  @JsonKey()
  List<TimelineModel> get educationExperience {
    if (_educationExperience is EqualUnmodifiableListView)
      return _educationExperience;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_educationExperience);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  final TimelineModel? selectedTimeline;

  /// Create a copy of CvPresentationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CvPresentationStateCopyWith<_CvPresentationState> get copyWith =>
      __$CvPresentationStateCopyWithImpl<_CvPresentationState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CvPresentationState &&
            const DeepCollectionEquality()
                .equals(other._yearLabels, _yearLabels) &&
            const DeepCollectionEquality()
                .equals(other._workExperience, _workExperience) &&
            const DeepCollectionEquality()
                .equals(other._projectExperience1, _projectExperience1) &&
            const DeepCollectionEquality()
                .equals(other._projectExperience2, _projectExperience2) &&
            const DeepCollectionEquality()
                .equals(other._projectExperience3, _projectExperience3) &&
            const DeepCollectionEquality()
                .equals(other._educationExperience, _educationExperience) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.selectedTimeline, selectedTimeline) ||
                other.selectedTimeline == selectedTimeline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_yearLabels),
      const DeepCollectionEquality().hash(_workExperience),
      const DeepCollectionEquality().hash(_projectExperience1),
      const DeepCollectionEquality().hash(_projectExperience2),
      const DeepCollectionEquality().hash(_projectExperience3),
      const DeepCollectionEquality().hash(_educationExperience),
      isLoading,
      errorMessage,
      selectedTimeline);

  @override
  String toString() {
    return 'CvPresentationState(yearLabels: $yearLabels, workExperience: $workExperience, projectExperience1: $projectExperience1, projectExperience2: $projectExperience2, projectExperience3: $projectExperience3, educationExperience: $educationExperience, isLoading: $isLoading, errorMessage: $errorMessage, selectedTimeline: $selectedTimeline)';
  }
}

/// @nodoc
abstract mixin class _$CvPresentationStateCopyWith<$Res>
    implements $CvPresentationStateCopyWith<$Res> {
  factory _$CvPresentationStateCopyWith(_CvPresentationState value,
          $Res Function(_CvPresentationState) _then) =
      __$CvPresentationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<TimelineModel> yearLabels,
      List<TimelineModel> workExperience,
      List<TimelineModel> projectExperience1,
      List<TimelineModel> projectExperience2,
      List<TimelineModel> projectExperience3,
      List<TimelineModel> educationExperience,
      bool isLoading,
      String? errorMessage,
      TimelineModel? selectedTimeline});
}

/// @nodoc
class __$CvPresentationStateCopyWithImpl<$Res>
    implements _$CvPresentationStateCopyWith<$Res> {
  __$CvPresentationStateCopyWithImpl(this._self, this._then);

  final _CvPresentationState _self;
  final $Res Function(_CvPresentationState) _then;

  /// Create a copy of CvPresentationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? yearLabels = null,
    Object? workExperience = null,
    Object? projectExperience1 = null,
    Object? projectExperience2 = null,
    Object? projectExperience3 = null,
    Object? educationExperience = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? selectedTimeline = freezed,
  }) {
    return _then(_CvPresentationState(
      yearLabels: null == yearLabels
          ? _self._yearLabels
          : yearLabels // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      workExperience: null == workExperience
          ? _self._workExperience
          : workExperience // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      projectExperience1: null == projectExperience1
          ? _self._projectExperience1
          : projectExperience1 // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      projectExperience2: null == projectExperience2
          ? _self._projectExperience2
          : projectExperience2 // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      projectExperience3: null == projectExperience3
          ? _self._projectExperience3
          : projectExperience3 // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      educationExperience: null == educationExperience
          ? _self._educationExperience
          : educationExperience // ignore: cast_nullable_to_non_nullable
              as List<TimelineModel>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTimeline: freezed == selectedTimeline
          ? _self.selectedTimeline
          : selectedTimeline // ignore: cast_nullable_to_non_nullable
              as TimelineModel?,
    ));
  }
}

// dart format on
