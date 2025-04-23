import 'package:flutter/material.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/core/util/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/common/widgets/custom_text.dart';
import 'package:resume/presentation/common/widgets/scroll_aware_widget.dart';

class HomeInvestarBackOfficeScreen extends StatelessWidget {
  const HomeInvestarBackOfficeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25 + context.width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 25 + context.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ScrollAwareWidget(
                  beginOffset: const Offset(-1, 0),
                  child: Text(
                    context.locale!.homeInvestarBackoffice1,
                    style: CustomTextTheme.boldTextStyle(
                      fontSize: 48,
                      color: context.colorScheme.primary,
                    ),
                  ),
                ),
                ScrollAwareWidget(
                  beginOffset: const Offset(1, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      CustomText.bold(
                        context.locale!.homeInvestarBackoffice2,
                        fontSize: 28,
                        textColor: TextColorEnum.sub,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ScrollAwareWidget(
            slide: false,
            fadeIn: false,
            scale: true,
            displayOnce: false,
            animationThreshold: 0.2,
            beginScale: 0.85,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Assets.image.imageInvestarBackoffice.image(),
            ),
          ),
        ],
      ),
    );
  }
}
