// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeContent {
  String get title1;
  String get title2;
  String get title3;
  String get title4;
  String get title5;
  ProjectContent get investarContent;
  ProjectContent get investarBackOfficeContent;
  ProjectContent get sblContent;
  ProjectContent get fireAntContent;

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeContentCopyWith<HomeContent> get copyWith =>
      _$HomeContentCopyWithImpl<HomeContent>(this as HomeContent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeContent &&
            (identical(other.title1, title1) || other.title1 == title1) &&
            (identical(other.title2, title2) || other.title2 == title2) &&
            (identical(other.title3, title3) || other.title3 == title3) &&
            (identical(other.title4, title4) || other.title4 == title4) &&
            (identical(other.title5, title5) || other.title5 == title5) &&
            (identical(other.investarContent, investarContent) ||
                other.investarContent == investarContent) &&
            (identical(other.investarBackOfficeContent,
                    investarBackOfficeContent) ||
                other.investarBackOfficeContent == investarBackOfficeContent) &&
            (identical(other.sblContent, sblContent) ||
                other.sblContent == sblContent) &&
            (identical(other.fireAntContent, fireAntContent) ||
                other.fireAntContent == fireAntContent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title1,
      title2,
      title3,
      title4,
      title5,
      investarContent,
      investarBackOfficeContent,
      sblContent,
      fireAntContent);

  @override
  String toString() {
    return 'HomeContent(title1: $title1, title2: $title2, title3: $title3, title4: $title4, title5: $title5, investarContent: $investarContent, investarBackOfficeContent: $investarBackOfficeContent, sblContent: $sblContent, fireAntContent: $fireAntContent)';
  }
}

/// @nodoc
abstract mixin class $HomeContentCopyWith<$Res> {
  factory $HomeContentCopyWith(
          HomeContent value, $Res Function(HomeContent) _then) =
      _$HomeContentCopyWithImpl;
  @useResult
  $Res call(
      {String title1,
      String title2,
      String title3,
      String title4,
      String title5,
      ProjectContent investarContent,
      ProjectContent investarBackOfficeContent,
      ProjectContent sblContent,
      ProjectContent fireAntContent});

  $ProjectContentCopyWith<$Res> get investarContent;
  $ProjectContentCopyWith<$Res> get investarBackOfficeContent;
  $ProjectContentCopyWith<$Res> get sblContent;
  $ProjectContentCopyWith<$Res> get fireAntContent;
}

/// @nodoc
class _$HomeContentCopyWithImpl<$Res> implements $HomeContentCopyWith<$Res> {
  _$HomeContentCopyWithImpl(this._self, this._then);

  final HomeContent _self;
  final $Res Function(HomeContent) _then;

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title1 = null,
    Object? title2 = null,
    Object? title3 = null,
    Object? title4 = null,
    Object? title5 = null,
    Object? investarContent = null,
    Object? investarBackOfficeContent = null,
    Object? sblContent = null,
    Object? fireAntContent = null,
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
      investarContent: null == investarContent
          ? _self.investarContent
          : investarContent // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      investarBackOfficeContent: null == investarBackOfficeContent
          ? _self.investarBackOfficeContent
          : investarBackOfficeContent // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      sblContent: null == sblContent
          ? _self.sblContent
          : sblContent // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      fireAntContent: null == fireAntContent
          ? _self.fireAntContent
          : fireAntContent // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
    ));
  }

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get investarContent {
    return $ProjectContentCopyWith<$Res>(_self.investarContent, (value) {
      return _then(_self.copyWith(investarContent: value));
    });
  }

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get investarBackOfficeContent {
    return $ProjectContentCopyWith<$Res>(_self.investarBackOfficeContent,
        (value) {
      return _then(_self.copyWith(investarBackOfficeContent: value));
    });
  }

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get sblContent {
    return $ProjectContentCopyWith<$Res>(_self.sblContent, (value) {
      return _then(_self.copyWith(sblContent: value));
    });
  }

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get fireAntContent {
    return $ProjectContentCopyWith<$Res>(_self.fireAntContent, (value) {
      return _then(_self.copyWith(fireAntContent: value));
    });
  }
}

/// @nodoc

class _HomeContent implements HomeContent {
  const _HomeContent(
      {required this.title1,
      required this.title2,
      required this.title3,
      required this.title4,
      required this.title5,
      required this.investarContent,
      required this.investarBackOfficeContent,
      required this.sblContent,
      required this.fireAntContent});

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
  final ProjectContent investarContent;
  @override
  final ProjectContent investarBackOfficeContent;
  @override
  final ProjectContent sblContent;
  @override
  final ProjectContent fireAntContent;

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeContentCopyWith<_HomeContent> get copyWith =>
      __$HomeContentCopyWithImpl<_HomeContent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeContent &&
            (identical(other.title1, title1) || other.title1 == title1) &&
            (identical(other.title2, title2) || other.title2 == title2) &&
            (identical(other.title3, title3) || other.title3 == title3) &&
            (identical(other.title4, title4) || other.title4 == title4) &&
            (identical(other.title5, title5) || other.title5 == title5) &&
            (identical(other.investarContent, investarContent) ||
                other.investarContent == investarContent) &&
            (identical(other.investarBackOfficeContent,
                    investarBackOfficeContent) ||
                other.investarBackOfficeContent == investarBackOfficeContent) &&
            (identical(other.sblContent, sblContent) ||
                other.sblContent == sblContent) &&
            (identical(other.fireAntContent, fireAntContent) ||
                other.fireAntContent == fireAntContent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title1,
      title2,
      title3,
      title4,
      title5,
      investarContent,
      investarBackOfficeContent,
      sblContent,
      fireAntContent);

  @override
  String toString() {
    return 'HomeContent(title1: $title1, title2: $title2, title3: $title3, title4: $title4, title5: $title5, investarContent: $investarContent, investarBackOfficeContent: $investarBackOfficeContent, sblContent: $sblContent, fireAntContent: $fireAntContent)';
  }
}

/// @nodoc
abstract mixin class _$HomeContentCopyWith<$Res>
    implements $HomeContentCopyWith<$Res> {
  factory _$HomeContentCopyWith(
          _HomeContent value, $Res Function(_HomeContent) _then) =
      __$HomeContentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title1,
      String title2,
      String title3,
      String title4,
      String title5,
      ProjectContent investarContent,
      ProjectContent investarBackOfficeContent,
      ProjectContent sblContent,
      ProjectContent fireAntContent});

  @override
  $ProjectContentCopyWith<$Res> get investarContent;
  @override
  $ProjectContentCopyWith<$Res> get investarBackOfficeContent;
  @override
  $ProjectContentCopyWith<$Res> get sblContent;
  @override
  $ProjectContentCopyWith<$Res> get fireAntContent;
}

/// @nodoc
class __$HomeContentCopyWithImpl<$Res> implements _$HomeContentCopyWith<$Res> {
  __$HomeContentCopyWithImpl(this._self, this._then);

  final _HomeContent _self;
  final $Res Function(_HomeContent) _then;

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title1 = null,
    Object? title2 = null,
    Object? title3 = null,
    Object? title4 = null,
    Object? title5 = null,
    Object? investarContent = null,
    Object? investarBackOfficeContent = null,
    Object? sblContent = null,
    Object? fireAntContent = null,
  }) {
    return _then(_HomeContent(
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
      investarContent: null == investarContent
          ? _self.investarContent
          : investarContent // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      investarBackOfficeContent: null == investarBackOfficeContent
          ? _self.investarBackOfficeContent
          : investarBackOfficeContent // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      sblContent: null == sblContent
          ? _self.sblContent
          : sblContent // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
      fireAntContent: null == fireAntContent
          ? _self.fireAntContent
          : fireAntContent // ignore: cast_nullable_to_non_nullable
              as ProjectContent,
    ));
  }

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get investarContent {
    return $ProjectContentCopyWith<$Res>(_self.investarContent, (value) {
      return _then(_self.copyWith(investarContent: value));
    });
  }

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get investarBackOfficeContent {
    return $ProjectContentCopyWith<$Res>(_self.investarBackOfficeContent,
        (value) {
      return _then(_self.copyWith(investarBackOfficeContent: value));
    });
  }

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get sblContent {
    return $ProjectContentCopyWith<$Res>(_self.sblContent, (value) {
      return _then(_self.copyWith(sblContent: value));
    });
  }

  /// Create a copy of HomeContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<$Res> get fireAntContent {
    return $ProjectContentCopyWith<$Res>(_self.fireAntContent, (value) {
      return _then(_self.copyWith(fireAntContent: value));
    });
  }
}

/// @nodoc
mixin _$ProjectContent {
  String get title;
  String get subtitle;
  String get description;
  List<ProjectImage> get images;

  /// Create a copy of ProjectContent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectContentCopyWith<ProjectContent> get copyWith =>
      _$ProjectContentCopyWithImpl<ProjectContent>(
          this as ProjectContent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectContent &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.images, images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, description,
      const DeepCollectionEquality().hash(images));

  @override
  String toString() {
    return 'ProjectContent(title: $title, subtitle: $subtitle, description: $description, images: $images)';
  }
}

/// @nodoc
abstract mixin class $ProjectContentCopyWith<$Res> {
  factory $ProjectContentCopyWith(
          ProjectContent value, $Res Function(ProjectContent) _then) =
      _$ProjectContentCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String description,
      List<ProjectImage> images});
}

/// @nodoc
class _$ProjectContentCopyWithImpl<$Res>
    implements $ProjectContentCopyWith<$Res> {
  _$ProjectContentCopyWithImpl(this._self, this._then);

  final ProjectContent _self;
  final $Res Function(ProjectContent) _then;

  /// Create a copy of ProjectContent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? description = null,
    Object? images = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProjectImage>,
    ));
  }
}

/// @nodoc

class _ProjectContent implements ProjectContent {
  const _ProjectContent(
      {required this.title,
      required this.subtitle,
      required this.description,
      final List<ProjectImage> images = const []})
      : _images = images;

  @override
  final String title;
  @override
  final String subtitle;
  @override
  final String description;
  final List<ProjectImage> _images;
  @override
  @JsonKey()
  List<ProjectImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  /// Create a copy of ProjectContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProjectContentCopyWith<_ProjectContent> get copyWith =>
      __$ProjectContentCopyWithImpl<_ProjectContent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectContent &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle, description,
      const DeepCollectionEquality().hash(_images));

  @override
  String toString() {
    return 'ProjectContent(title: $title, subtitle: $subtitle, description: $description, images: $images)';
  }
}

/// @nodoc
abstract mixin class _$ProjectContentCopyWith<$Res>
    implements $ProjectContentCopyWith<$Res> {
  factory _$ProjectContentCopyWith(
          _ProjectContent value, $Res Function(_ProjectContent) _then) =
      __$ProjectContentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String subtitle,
      String description,
      List<ProjectImage> images});
}

/// @nodoc
class __$ProjectContentCopyWithImpl<$Res>
    implements _$ProjectContentCopyWith<$Res> {
  __$ProjectContentCopyWithImpl(this._self, this._then);

  final _ProjectContent _self;
  final $Res Function(_ProjectContent) _then;

  /// Create a copy of ProjectContent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? subtitle = null,
    Object? description = null,
    Object? images = null,
  }) {
    return _then(_ProjectContent(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _self.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProjectImage>,
    ));
  }
}

/// @nodoc
mixin _$ProjectImage {
  AssetGenImage get image;
  String get altText;

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProjectImageCopyWith<ProjectImage> get copyWith =>
      _$ProjectImageCopyWithImpl<ProjectImage>(
          this as ProjectImage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProjectImage &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.altText, altText) || other.altText == altText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(image), altText);

  @override
  String toString() {
    return 'ProjectImage(image: $image, altText: $altText)';
  }
}

/// @nodoc
abstract mixin class $ProjectImageCopyWith<$Res> {
  factory $ProjectImageCopyWith(
          ProjectImage value, $Res Function(ProjectImage) _then) =
      _$ProjectImageCopyWithImpl;
  @useResult
  $Res call({AssetGenImage image, String altText});
}

/// @nodoc
class _$ProjectImageCopyWithImpl<$Res> implements $ProjectImageCopyWith<$Res> {
  _$ProjectImageCopyWithImpl(this._self, this._then);

  final ProjectImage _self;
  final $Res Function(ProjectImage) _then;

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? altText = null,
  }) {
    return _then(_self.copyWith(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      altText: null == altText
          ? _self.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _ProjectImage implements ProjectImage {
  const _ProjectImage({required this.image, required this.altText});

  @override
  final AssetGenImage image;
  @override
  final String altText;

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProjectImageCopyWith<_ProjectImage> get copyWith =>
      __$ProjectImageCopyWithImpl<_ProjectImage>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProjectImage &&
            const DeepCollectionEquality().equals(other.image, image) &&
            (identical(other.altText, altText) || other.altText == altText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(image), altText);

  @override
  String toString() {
    return 'ProjectImage(image: $image, altText: $altText)';
  }
}

/// @nodoc
abstract mixin class _$ProjectImageCopyWith<$Res>
    implements $ProjectImageCopyWith<$Res> {
  factory _$ProjectImageCopyWith(
          _ProjectImage value, $Res Function(_ProjectImage) _then) =
      __$ProjectImageCopyWithImpl;
  @override
  @useResult
  $Res call({AssetGenImage image, String altText});
}

/// @nodoc
class __$ProjectImageCopyWithImpl<$Res>
    implements _$ProjectImageCopyWith<$Res> {
  __$ProjectImageCopyWithImpl(this._self, this._then);

  final _ProjectImage _self;
  final $Res Function(_ProjectImage) _then;

  /// Create a copy of ProjectImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = freezed,
    Object? altText = null,
  }) {
    return _then(_ProjectImage(
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as AssetGenImage,
      altText: null == altText
          ? _self.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
