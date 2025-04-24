import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/presentation/cover-letter/models/cover_letter_model.dart';
import 'package:resume/core/provider/app_localizations_state_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cover_letter_view_model.freezed.dart';
part 'cover_letter_view_model.g.dart';

@freezed
abstract class CoverLetterState with _$CoverLetterState {
  const factory CoverLetterState({
    required CoverLetterContent content,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _CoverLetterState;
}

@riverpod
class CoverLetterViewModel extends _$CoverLetterViewModel {
  @override
  CoverLetterState build() {
    final locale = ref.watch(appLocalizationsStateProvider);

    try {
      return CoverLetterState(
        content: CoverLetterContent(
          title1: locale.coverLetterTitle1,
          title2: locale.coverLetterTitle2,
          title3: locale.coverLetterTitle3,
          title4: locale.coverLetterTitle4,
          title5: locale.coverLetterTitle5,
          subtitle1: locale.coverLetterTitle5_1,
          subtitle2: locale.coverLetterTitle5_2,
          cards: [
            CoverLetterCard(
              imagePath: Assets.image.imageCoverLetter1.path,
              title: locale.coverLetterCard1_1,
              description: [
                locale.coverLetterCard1_2,
                locale.coverLetterCard1_3,
              ],
            ),
            CoverLetterCard(
              imagePath: Assets.image.imageCoverLetter2.path,
              title: locale.coverLetterCard2_1,
              description: [
                locale.coverLetterCard2_2,
                locale.coverLetterCard2_3,
              ],
            ),
            CoverLetterCard(
              imagePath: Assets.image.imageCoverLetter3.path,
              title: locale.coverLetterCard3_1,
              description: [
                locale.coverLetterCard3_2,
                locale.coverLetterCard3_3,
              ],
            ),
            CoverLetterCard(
              imagePath: Assets.image.imageCoverLetter4.path,
              title: locale.coverLetterCard4_1,
              description: [
                locale.coverLetterCard4_2,
                locale.coverLetterCard4_3,
              ],
            ),
          ],
        ),
      );
    } catch (e) {
      return CoverLetterState(
        content: _getEmptyContent(),
        errorMessage: 'Failed to load cover letter content',
      );
    }
  }

  CoverLetterContent _getEmptyContent() {
    return const CoverLetterContent(
      title1: '',
      title2: '',
      title3: '',
      title4: '',
      title5: '',
      subtitle1: '',
      subtitle2: '',
      cards: [],
    );
  }
}
