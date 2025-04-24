import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resume/asset/gen/assets.gen.dart';

part 'cover_letter_model.freezed.dart';

@freezed
abstract class CoverLetterContent with _$CoverLetterContent {
  const CoverLetterContent._();

  const factory CoverLetterContent({
    required String title1,
    required String title2,
    required String title3,
    required String title4,
    required String title5,
    required String subtitle1,
    required String subtitle2,
    required List<CoverLetterCard> cards,
  }) = _CoverLetterContent;
}

@freezed
abstract class CoverLetterCard with _$CoverLetterCard {
  const CoverLetterCard._();

  const factory CoverLetterCard({
    required String imagePath,
    required String title,
    required List<String> description,
  }) = _CoverLetterCard;

  AssetGenImage get image => AssetGenImage(imagePath);
}
