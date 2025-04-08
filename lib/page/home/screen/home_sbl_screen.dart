import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/page/home/widget/home_image_box_widget.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/function/duration.dart';
import 'package:resume/util/theme/custom_text_theme.dart';
import 'package:resume/widget/common/custom_text.dart';
import 'package:resume/widget/common/scroll_aware_widget.dart';
import 'package:collection/collection.dart';

class HomeSblScreen extends StatelessWidget {
  const HomeSblScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25 + context.width * 0.05),
      height: 1200,
      width: context.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 30,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 30,
            children: [
              ScrollAwareWidget(
                delay: animationDelay(order: 0),
                child: Text(
                  context.locale!.homeSbl1,
                  style: CustomTextTheme.boldTextStyle(
                    fontSize: 48,
                    color: context.colorScheme.primary,
                  ),
                ),
              ),
              ScrollAwareWidget(
                delay: animationDelay(order: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText.bold(
                      context.locale!.homeSbl2,
                      fontSize: 32,
                    ),
                  ],
                ),
              ),
              ScrollAwareWidget(
                delay: animationDelay(order: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText.bold(
                      context.locale!.homeSbl3,
                      fontSize: 28,
                      textColor: TextColorEnum.sub,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            width: context.width,
            height: 700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                Assets.image.imageSblApp1,
                Assets.image.imageSblApp2,
                Assets.image.imageSblApp3,
                Assets.image.imageSblApp4,
              ]
                  .mapIndexed(
                    (index, image) => ScrollAwareWidget(
                      delay: animationDelay(order: index),
                      animationThreshold: 0.15,
                      child: HomeImageBoxWidget(
                        child: image,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
