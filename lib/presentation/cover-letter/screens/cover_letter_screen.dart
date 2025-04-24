import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/presentation/cover-letter/view_models/cover_letter_view_model.dart';
import 'package:resume/presentation/cover-letter/widgets/cover_letter_card_container.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';
import 'package:resume/presentation/core/widgets/page_fade_widget.dart';

class CoverLetterScreen extends ConsumerWidget {
  static const String path = '/coverLetter';
  const CoverLetterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(coverLetterViewModelProvider);

    if (state.errorMessage != null) {
      return Center(child: Text("Error: ${state.errorMessage}"));
    }

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final content = state.content;

    return FadeSlideWidget(
      delay: const Duration(milliseconds: 500),
      child: Wrap(
        children: [
          SizedBox(
            height: context.height - 164,
            width: context.width,
            child: PageFadeWidget(
              backgroundImage: Assets.image.imageCoverLetterBackground1,
              children: [
                Text(
                  content.title1,
                  style: CustomTextTheme.boldTextStyle(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
                ...[
                  content.title2,
                  content.title3,
                  content.title4,
                ].map(
                  (e) => CustomText.bold(
                    e,
                    fontSize: 32,
                  ),
                ),
                CoverLetterCardContainer(
                  title: content.title5,
                  subtitle1: content.subtitle1,
                  subtitle2: content.subtitle2,
                  cards: content.cards,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
