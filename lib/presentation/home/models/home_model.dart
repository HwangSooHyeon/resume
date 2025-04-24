import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resume/asset/gen/assets.gen.dart';

part 'home_model.freezed.dart';

@freezed
abstract class HomeContent with _$HomeContent {
  const factory HomeContent({
    required String title1,
    required String title2,
    required String title3,
    required String title4,
    required String title5,
    required ProjectContent investarContent,
    required ProjectContent investarBackOfficeContent,
    required ProjectContent sblContent,
    required ProjectContent fireAntContent,
  }) = _HomeContent;
}

@freezed
abstract class ProjectContent with _$ProjectContent {
  const factory ProjectContent({
    required String title,
    required String subtitle,
    required String description,
    @Default([]) List<ProjectImage> images,
  }) = _ProjectContent;
}

@freezed
abstract class ProjectImage with _$ProjectImage {
  const factory ProjectImage({
    required AssetGenImage image,
    required String altText,
  }) = _ProjectImage;
}
