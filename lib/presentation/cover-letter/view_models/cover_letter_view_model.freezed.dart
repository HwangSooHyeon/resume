// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover_letter_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoverLetterState {
  CoverLetterContent get content;
  bool get isLoading;
  String? get errorMessage;

  /// Create a copy of CoverLetterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoverLetterStateCopyWith<CoverLetterState> get copyWith =>
      _$CoverLetterStateCopyWithImpl<CoverLetterState>(
          this as CoverLetterState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoverLetterState &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, content, isLoading, errorMessage);

  @override
  String toString() {
    return 'CoverLetterState(content: $content, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $CoverLetterStateCopyWith<$Res> {
  factory $CoverLetterStateCopyWith(
          CoverLetterState value, $Res Function(CoverLetterState) _then) =
      _$CoverLetterStateCopyWithImpl;
  @useResult
  $Res call({CoverLetterContent content, bool isLoading, String? errorMessage});

  $CoverLetterContentCopyWith<$Res> get content;
}

/// @nodoc
class _$CoverLetterStateCopyWithImpl<$Res>
    implements $CoverLetterStateCopyWith<$Res> {
  _$CoverLetterStateCopyWithImpl(this._self, this._then);

  final CoverLetterState _self;
  final $Res Function(CoverLetterState) _then;

  /// Create a copy of CoverLetterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_self.copyWith(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as CoverLetterContent,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CoverLetterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoverLetterContentCopyWith<$Res> get content {
    return $CoverLetterContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

/// @nodoc

class _CoverLetterState implements CoverLetterState {
  const _CoverLetterState(
      {required this.content,
      this.isLoading = false,
      this.errorMessage = null});

  @override
  final CoverLetterContent content;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;

  /// Create a copy of CoverLetterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoverLetterStateCopyWith<_CoverLetterState> get copyWith =>
      __$CoverLetterStateCopyWithImpl<_CoverLetterState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoverLetterState &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, content, isLoading, errorMessage);

  @override
  String toString() {
    return 'CoverLetterState(content: $content, isLoading: $isLoading, errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class _$CoverLetterStateCopyWith<$Res>
    implements $CoverLetterStateCopyWith<$Res> {
  factory _$CoverLetterStateCopyWith(
          _CoverLetterState value, $Res Function(_CoverLetterState) _then) =
      __$CoverLetterStateCopyWithImpl;
  @override
  @useResult
  $Res call({CoverLetterContent content, bool isLoading, String? errorMessage});

  @override
  $CoverLetterContentCopyWith<$Res> get content;
}

/// @nodoc
class __$CoverLetterStateCopyWithImpl<$Res>
    implements _$CoverLetterStateCopyWith<$Res> {
  __$CoverLetterStateCopyWithImpl(this._self, this._then);

  final _CoverLetterState _self;
  final $Res Function(_CoverLetterState) _then;

  /// Create a copy of CoverLetterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? content = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_CoverLetterState(
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as CoverLetterContent,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of CoverLetterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoverLetterContentCopyWith<$Res> get content {
    return $CoverLetterContentCopyWith<$Res>(_self.content, (value) {
      return _then(_self.copyWith(content: value));
    });
  }
}

// dart format on
