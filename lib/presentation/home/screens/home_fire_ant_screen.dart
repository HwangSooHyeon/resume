import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/presentation/home/models/home_model.dart';
import 'package:resume/presentation/home/widgets/home_image_box_widget.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/core/widgets/scroll_aware_widget.dart';

class HomeFireAntScreen extends StatelessWidget {
  const HomeFireAntScreen({
    super.key,
    required this.fireAntContent,
  });

  final ProjectContent fireAntContent;

  @override
  Widget build(BuildContext context) {
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
                    fireAntContent.title,
                    style: CustomTextTheme.boldTextStyle(fontSize: 48)
                        .copyWith(color: context.colorScheme.primary),
                  ),
                ),
                CustomText.bold(
                  fireAntContent.subtitle,
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
                  fireAntContent.description,
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
                itemBuilder: (context, i) {
                  return ScrollAwareWidget(
                    delay: animationDelay(order: i),
                    animationThreshold: 0.15,
                    child: HomeImageBoxWidget(
                      child: fireAntContent.images[i].image,
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
