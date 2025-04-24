import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';
import 'package:resume/presentation/core/widgets/transition_transform_widget.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';

class HomeMainScreen extends StatelessWidget {
  const HomeMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height - 84,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          FadeSlideWidget(
            delay: animationDelay(order: 0),
            child: Assets.image.imageMain.image(
              height: context.height,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.black.withValues(alpha: 0),
            ),
          ),
          Positioned(
            left: context.width / 2 - 275,
            top: context.height / 2 - 450,
            child: FadeSlideWidget(
              delay: animationDelay(order: 1),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Assets.image.imageMain.image(
                  height: 550,
                  width: 550,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: context.height / 2 - 320,
            child: FadeSlideWidget(
              delay: animationDelay(order: 2),
              child: Column(
                children: [
                  const Gap(100),
                  Text(
                    context.locale!.homeTitle1,
                    style: CustomTextTheme.boldTextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  const Gap(10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(999),
                      color: context.colorScheme.primary,
                    ),
                    child: Text(
                      context.locale!.homeTitle2,
                      style: CustomTextTheme.boldTextStyle(
                        fontSize: 40,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: context.height / 14,
            child: FadeSlideWidget(
              delay: animationDelay(order: 3),
              child: const TransitionTransformWidget(
                child: Icon(
                  Icons.expand_more_rounded,
                  size: 80,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
