import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/page/home/widget/home_image_box_widget.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/function/duration.dart';
import 'package:resume/util/theme/custom_text_theme.dart';
import 'package:resume/widget/common/custom_text.dart';
import 'package:resume/widget/common/scroll_aware_widget.dart';

class HomeFireAntScreen extends StatelessWidget {
  const HomeFireAntScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      Assets.image.imageFireAnt1,
      Assets.image.imageFireAnt2,
      Assets.image.imageFireAnt3,
      Assets.image.imageFireAnt4,
      Assets.image.imageFireAnt5,
      Assets.image.imageFireAnt6,
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25 + context.width * 0.05),
      width: context.width,
      height: 1000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: [
          ScrollAwareWidget(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    context.locale!.homeFireAnt1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 48)
                        .copyWith(color: context.colorScheme.primary),
                  ),
                ),
                CustomText.bold(
                  context.locale!.homeFireAnt2,
                  fontSize: 32,
                ),
              ],
            ),
          ),
          ScrollAwareWidget(
            delay: animationDelay(order: 0),
            child: Row(
              children: [
                CustomText.bold(
                  context.locale!.homeFireAnt3,
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
            child: SizedBox(
              width: context.width,
              height: 700,
              child: ListView.separated(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 25,
                ),
                itemCount: 6,
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
            ),
          ),
        ],
      ),
    );
  }
}
