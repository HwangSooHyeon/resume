import 'package:flutter/material.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';

class ConfigScreen extends StatelessWidget {
  static const String path = '/config';
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height - 164,
      width: context.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          FadeSlideWidget(
            delay: animationDelay(order: 0),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Assets.lottie.configLottie.lottie(
                animate: true,
                repeat: true,
              ),
            ),
          ),
          FadeSlideWidget(
            delay: animationDelay(order: 1),
            child: Text(
              context.locale!.configTitle,
              style: CustomTextTheme.boldTextStyle(
                fontSize: 24,
                color: context.colorScheme.onSurface,
              ),
            ),
          ),
          FadeSlideWidget(
            delay: animationDelay(order: 2),
            child: Text(
              context.locale!.configDescription,
              style: CustomTextTheme.regularTextStyle(
                fontSize: 16,
                color: context.colorScheme.onSurface.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
