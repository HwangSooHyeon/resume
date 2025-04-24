import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/l10n/gen_l10n/app_localizations_en.dart';
import 'package:resume/l10n/gen_l10n/app_localizations_ko.dart';
import 'package:resume/presentation/home/widgets/home_image_box_widget.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/view_model/app_localizations_view_model.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/core/widgets/scroll_aware_widget.dart';

class HomeInvestarScreen extends StatelessWidget {
  const HomeInvestarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1200,
      width: context.width,
      padding: EdgeInsets.only(left: 50 + context.width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: [
          ScrollAwareWidget(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 10,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    context.locale!.homeInvestar1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 48)
                        .copyWith(color: context.colorScheme.primary),
                  ),
                ),
                CustomText.bold(
                  context.locale!.homeInvestar2,
                  fontSize: 32,
                ),
              ],
            ),
          ),
          ScrollAwareWidget(
            delay: animationDelay(order: 0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              spacing: 10,
              children: [
                CustomText.bold(
                  context.locale!.homeInvestar3,
                  fontSize: 28,
                  textColor: TextColorEnum.sub,
                ),
              ],
            ),
          ),
          ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              physics: const BouncingScrollPhysics(),
              dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
            ),
            child: Consumer(
              builder: (context, ref, child) {
                final currentLang =
                    ref.watch(appLocalizationsViewModelProvider);
                final images = switch (currentLang) {
                  AppLocalizationsKo() => [
                      Assets.image.imageInvestarKor1,
                      Assets.image.imageInvestarKor2,
                      Assets.image.imageInvestarKor3,
                      Assets.image.imageInvestarKor4,
                      Assets.image.imageInvestarKor5,
                      Assets.image.imageInvestarKor6,
                      Assets.image.imageInvestarKor7,
                    ],
                  AppLocalizationsEn() => [
                      Assets.image.imageInvestarEng1,
                      Assets.image.imageInvestarEng2,
                      Assets.image.imageInvestarEng3,
                      Assets.image.imageInvestarEng4,
                      Assets.image.imageInvestarEng5,
                      Assets.image.imageInvestarEng6,
                      Assets.image.imageInvestarEng7,
                    ],
                  _ => [
                      Assets.image.imageInvestarKor1,
                      Assets.image.imageInvestarKor2,
                      Assets.image.imageInvestarKor3,
                      Assets.image.imageInvestarKor4,
                      Assets.image.imageInvestarKor5,
                      Assets.image.imageInvestarKor6,
                      Assets.image.imageInvestarKor7,
                    ],
                };
                return SizedBox(
                  width: context.width,
                  height: 700,
                  child: ListView.separated(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 25,
                    ),
                    itemCount: 7,
                    separatorBuilder: (context, index) => const Gap(30),
                    itemBuilder: (context, index) {
                      return ScrollAwareWidget(
                        delay: animationDelay(order: index),
                        animationThreshold: 0.15,
                        child: HomeImageBoxWidget(
                          child: images[index],
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
