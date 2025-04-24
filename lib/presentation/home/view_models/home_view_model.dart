import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/domain/entities/home_model.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/presentation/core/view_model/app_localizations_view_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.freezed.dart';
part 'home_view_model.g.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    required HomeContent content,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _HomeState;
}

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    final locale = ref.watch(appLocalizationsViewModelProvider);

    try {
      return HomeState(content: _getHomeContent(locale));
    } catch (e) {
      return const HomeState(
        content: HomeContent(
            title1: '',
            title2: '',
            title3: '',
            title4: '',
            title5: '',
            investarContent: ProjectContent(
              title: '',
              subtitle: '',
              description: '',
            ),
            investarBackOfficeContent: ProjectContent(
              title: '',
              subtitle: '',
              description: '',
            ),
            sblContent: ProjectContent(
              title: '',
              subtitle: '',
              description: '',
            ),
            fireAntContent: ProjectContent(
              title: '',
              subtitle: '',
              description: '',
            )),
        errorMessage: 'Failed to load content',
      );
    }
  }

  HomeContent _getHomeContent(AppLocalizations locale) {
    return HomeContent(
      title1: locale.homeTitle1,
      title2: locale.homeTitle2,
      title3: locale.homeTitle3,
      title4: locale.homeTitle4,
      title5: locale.homeTitle5,
      investarContent: ProjectContent(
        title: locale.homeInvestar1,
        subtitle: locale.homeInvestar2,
        description: locale.homeInvestar3,
        images: _getInvestarImages(locale),
      ),
      investarBackOfficeContent: ProjectContent(
        title: locale.homeInvestarBackoffice1,
        subtitle: locale.homeInvestarBackoffice2,
        description: locale.homeInvestarBackoffice3,
        images: [
          ProjectImage(
              image: Assets.image.imageInvestarBackoffice,
              altText: 'Investar Backoffice')
        ],
      ),
      sblContent: ProjectContent(
        title: locale.homeSbl1,
        subtitle: locale.homeSbl2,
        description: locale.homeSbl3,
        images: [
          ProjectImage(image: Assets.image.imageSblApp1, altText: 'SBL App 1'),
          ProjectImage(image: Assets.image.imageSblApp2, altText: 'SBL App 2'),
          ProjectImage(image: Assets.image.imageSblApp3, altText: 'SBL App 3'),
          ProjectImage(image: Assets.image.imageSblApp4, altText: 'SBL App 4'),
        ],
      ),
      fireAntContent: ProjectContent(
        title: locale.homeFireAnt1,
        subtitle: locale.homeFireAnt2,
        description: locale.homeFireAnt3,
        images: [
          ProjectImage(
              image: Assets.image.imageFireAnt1, altText: 'Fire Ant 1'),
          ProjectImage(
              image: Assets.image.imageFireAnt2, altText: 'Fire Ant 2'),
          ProjectImage(
              image: Assets.image.imageFireAnt3, altText: 'Fire Ant 3'),
          ProjectImage(
              image: Assets.image.imageFireAnt4, altText: 'Fire Ant 4'),
          ProjectImage(
              image: Assets.image.imageFireAnt5, altText: 'Fire Ant 5'),
          ProjectImage(
              image: Assets.image.imageFireAnt6, altText: 'Fire Ant 6'),
        ],
      ),
    );
  }

  List<ProjectImage> _getInvestarImages(AppLocalizations locale) {
    if (locale.localeName == 'ko') {
      return [
        ProjectImage(
          image: Assets.image.imageInvestarKor1,
          altText: 'Investar KR 1',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarKor2,
          altText: 'Investar KR 2',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarKor3,
          altText: 'Investar KR 3',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarKor4,
          altText: 'Investar KR 4',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarKor5,
          altText: 'Investar KR 5',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarKor6,
          altText: 'Investar KR 6',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarKor7,
          altText: 'Investar KR 7',
        ),
      ];
    } else {
      return [
        ProjectImage(
          image: Assets.image.imageInvestarEng1,
          altText: 'Investar EN 1',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarEng2,
          altText: 'Investar EN 2',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarEng3,
          altText: 'Investar EN 3',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarEng4,
          altText: 'Investar EN 4',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarEng5,
          altText: 'Investar EN 5',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarEng6,
          altText: 'Investar EN 6',
        ),
        ProjectImage(
          image: Assets.image.imageInvestarEng7,
          altText: 'Investar EN 7',
        ),
      ];
    }
  }
}
