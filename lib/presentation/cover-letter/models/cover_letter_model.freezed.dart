// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cover_letter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CoverLetterContent {
  String get title1;
  String get title2;
  String get title3;
  String get title4;
  String get title5;
  String get subtitle1;
  String get subtitle2;
  List<CoverLetterCard> get cards;

  /// Create a copy of CoverLetterContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoverLetterContentCopyWith<CoverLetterContent> get copyWith =>
      _$CoverLetterContentCopyWithImpl<CoverLetterContent>(
          this as CoverLetterContent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoverLetterContent &&
            (identical(other.title1, title1) || other.title1 == title1) &&
            (identical(other.title2, title2) || other.title2 == title2) &&
            (identical(other.title3, title3) || other.title3 == title3) &&
            (identical(other.title4, title4) || other.title4 == title4) &&
            (identical(other.title5, title5) || other.title5 == title5) &&
            (identical(other.subtitle1, subtitle1) ||
                other.subtitle1 == subtitle1) &&
            (identical(other.subtitle2, subtitle2) ||
                other.subtitle2 == subtitle2) &&
            const DeepCollectionEquality().equals(other.cards, cards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title1, title2, title3, title4,
      title5, subtitle1, subtitle2, const DeepCollectionEquality().hash(cards));

  @override
  String toString() {
    return 'CoverLetterContent(title1: $title1, title2: $title2, title3: $title3, title4: $title4, title5: $title5, subtitle1: $subtitle1, subtitle2: $subtitle2, cards: $cards)';
  }
}

/// @nodoc
abstract mixin class $CoverLetterContentCopyWith<$Res> {
  factory $CoverLetterContentCopyWith(
          CoverLetterContent value, $Res Function(CoverLetterContent) _then) =
      _$CoverLetterContentCopyWithImpl;
  @useResult
  $Res call(
      {String title1,
      String title2,
      String title3,
      String title4,
      String title5,
      String subtitle1,
      String subtitle2,
      List<CoverLetterCard> cards});
}

/// @nodoc
class _$CoverLetterContentCopyWithImpl<$Res>
    implements $CoverLetterContentCopyWith<$Res> {
  _$CoverLetterContentCopyWithImpl(this._self, this._then);

  final CoverLetterContent _self;
  final $Res Function(CoverLetterContent) _then;

  /// Create a copy of CoverLetterContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title1 = null,
    Object? title2 = null,
    Object? title3 = null,
    Object? title4 = null,
    Object? title5 = null,
    Object? subtitle1 = null,
    Object? subtitle2 = null,
    Object? cards = null,
  }) {
    return _then(_self.copyWith(
      title1: null == title1
          ? _self.title1
          : title1 // ignore: cast_nullable_to_non_nullable
              as String,
      title2: null == title2
          ? _self.title2
          : title2 // ignore: cast_nullable_to_non_nullable
              as String,
      title3: null == title3
          ? _self.title3
          : title3 // ignore: cast_nullable_to_non_nullable
              as String,
      title4: null == title4
          ? _self.title4
          : title4 // ignore: cast_nullable_to_non_nullable
              as String,
      title5: null == title5
          ? _self.title5
          : title5 // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle1: null == subtitle1
          ? _self.subtitle1
          : subtitle1 // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle2: null == subtitle2
          ? _self.subtitle2
          : subtitle2 // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _self.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CoverLetterCard>,
    ));
  }
}

/// @nodoc

class _CoverLetterContent extends CoverLetterContent {
  const _CoverLetterContent(
      {required this.title1,
      required this.title2,
      required this.title3,
      required this.title4,
      required this.title5,
      required this.subtitle1,
      required this.subtitle2,
      required final List<CoverLetterCard> cards})
      : _cards = cards,
        super._();

  @override
  final String title1;
  @override
  final String title2;
  @override
  final String title3;
  @override
  final String title4;
  @override
  final String title5;
  @override
  final String subtitle1;
  @override
  final String subtitle2;
  final List<CoverLetterCard> _cards;
  @override
  List<CoverLetterCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  /// Create a copy of CoverLetterContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoverLetterContentCopyWith<_CoverLetterContent> get copyWith =>
      __$CoverLetterContentCopyWithImpl<_CoverLetterContent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoverLetterContent &&
            (identical(other.title1, title1) || other.title1 == title1) &&
            (identical(other.title2, title2) || other.title2 == title2) &&
            (identical(other.title3, title3) || other.title3 == title3) &&
            (identical(other.title4, title4) || other.title4 == title4) &&
            (identical(other.title5, title5) || other.title5 == title5) &&
            (identical(other.subtitle1, subtitle1) ||
                other.subtitle1 == subtitle1) &&
            (identical(other.subtitle2, subtitle2) ||
                other.subtitle2 == subtitle2) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title1,
      title2,
      title3,
      title4,
      title5,
      subtitle1,
      subtitle2,
      const DeepCollectionEquality().hash(_cards));

  @override
  String toString() {
    return 'CoverLetterContent(title1: $title1, title2: $title2, title3: $title3, title4: $title4, title5: $title5, subtitle1: $subtitle1, subtitle2: $subtitle2, cards: $cards)';
  }
}

/// @nodoc
abstract mixin class _$CoverLetterContentCopyWith<$Res>
    implements $CoverLetterContentCopyWith<$Res> {
  factory _$CoverLetterContentCopyWith(
          _CoverLetterContent value, $Res Function(_CoverLetterContent) _then) =
      __$CoverLetterContentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title1,
      String title2,
      String title3,
      String title4,
      String title5,
      String subtitle1,
      String subtitle2,
      List<CoverLetterCard> cards});
}

/// @nodoc
class __$CoverLetterContentCopyWithImpl<$Res>
    implements _$CoverLetterContentCopyWith<$Res> {
  __$CoverLetterContentCopyWithImpl(this._self, this._then);

  final _CoverLetterContent _self;
  final $Res Function(_CoverLetterContent) _then;

  /// Create a copy of CoverLetterContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title1 = null,
    Object? title2 = null,
    Object? title3 = null,
    Object? title4 = null,
    Object? title5 = null,
    Object? subtitle1 = null,
    Object? subtitle2 = null,
    Object? cards = null,
  }) {
    return _then(_CoverLetterContent(
      title1: null == title1
          ? _self.title1
          : title1 // ignore: cast_nullable_to_non_nullable
              as String,
      title2: null == title2
          ? _self.title2
          : title2 // ignore: cast_nullable_to_non_nullable
              as String,
      title3: null == title3
          ? _self.title3
          : title3 // ignore: cast_nullable_to_non_nullable
              as String,
      title4: null == title4
          ? _self.title4
          : title4 // ignore: cast_nullable_to_non_nullable
              as String,
      title5: null == title5
          ? _self.title5
          : title5 // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle1: null == subtitle1
          ? _self.subtitle1
          : subtitle1 // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle2: null == subtitle2
          ? _self.subtitle2
          : subtitle2 // ignore: cast_nullable_to_non_nullable
              as String,
      cards: null == cards
          ? _self._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CoverLetterCard>,
    ));
  }
}

/// @nodoc
mixin _$CoverLetterCard {
  String get imagePath;
  String get title;
  List<String> get description;

  /// Create a copy of CoverLetterCard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoverLetterCardCopyWith<CoverLetterCard> get copyWith =>
      _$CoverLetterCardCopyWithImpl<CoverLetterCard>(
          this as CoverLetterCard, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CoverLetterCard &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, title,
      const DeepCollectionEquality().hash(description));

  @override
  String toString() {
    return 'CoverLetterCard(imagePath: $imagePath, title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class $CoverLetterCardCopyWith<$Res> {
  factory $CoverLetterCardCopyWith(
          CoverLetterCard value, $Res Function(CoverLetterCard) _then) =
      _$CoverLetterCardCopyWithImpl;
  @useResult
  $Res call({String imagePath, String title, List<String> description});
}

/// @nodoc
class _$CoverLetterCardCopyWithImpl<$Res>
    implements $CoverLetterCardCopyWith<$Res> {
  _$CoverLetterCardCopyWithImpl(this._self, this._then);

  final CoverLetterCard _self;
  final $Res Function(CoverLetterCard) _then;

  /// Create a copy of CoverLetterCard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _CoverLetterCard extends CoverLetterCard {
  const _CoverLetterCard(
      {required this.imagePath,
      required this.title,
      required final List<String> description})
      : _description = description,
        super._();

  @override
  final String imagePath;
  @override
  final String title;
  final List<String> _description;
  @override
  List<String> get description {
    if (_description is EqualUnmodifiableListView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_description);
  }

  /// Create a copy of CoverLetterCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoverLetterCardCopyWith<_CoverLetterCard> get copyWith =>
      __$CoverLetterCardCopyWithImpl<_CoverLetterCard>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoverLetterCard &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._description, _description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath, title,
      const DeepCollectionEquality().hash(_description));

  @override
  String toString() {
    return 'CoverLetterCard(imagePath: $imagePath, title: $title, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$CoverLetterCardCopyWith<$Res>
    implements $CoverLetterCardCopyWith<$Res> {
  factory _$CoverLetterCardCopyWith(
          _CoverLetterCard value, $Res Function(_CoverLetterCard) _then) =
      __$CoverLetterCardCopyWithImpl;
  @override
  @useResult
  $Res call({String imagePath, String title, List<String> description});
}

/// @nodoc
class __$CoverLetterCardCopyWithImpl<$Res>
    implements _$CoverLetterCardCopyWith<$Res> {
  __$CoverLetterCardCopyWithImpl(this._self, this._then);

  final _CoverLetterCard _self;
  final $Res Function(_CoverLetterCard) _then;

  /// Create a copy of CoverLetterCard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? imagePath = null,
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_CoverLetterCard(
      imagePath: null == imagePath
          ? _self.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self._description
          : description // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
