import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/domain/entities/home_model.dart';
import 'package:resume/presentation/home/widgets/home_image_box_widget.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/core/widgets/scroll_aware_widget.dart';

class HomeInvestarScreen extends StatelessWidget {
  const HomeInvestarScreen({
    super.key,
    required this.investarContent,
  });

  final ProjectContent investarContent;

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
                    investarContent.title,
                    style: CustomTextTheme.boldTextStyle(fontSize: 48)
                        .copyWith(color: context.colorScheme.primary),
                  ),
                ),
                CustomText.bold(
                  investarContent.subtitle,
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
                  investarContent.description,
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
                itemCount: 7,
                separatorBuilder: (context, index) => const Gap(30),
                itemBuilder: (context, index) {
                  return ScrollAwareWidget(
                    delay: animationDelay(order: index),
                    animationThreshold: 0.15,
                    child: HomeImageBoxWidget(
                      child: investarContent.images[index].image,
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
