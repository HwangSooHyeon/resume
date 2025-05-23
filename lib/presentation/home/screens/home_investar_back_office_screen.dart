import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/home/models/home_model.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/core/widgets/scroll_aware_widget.dart';

class HomeInvestarBackOfficeScreen extends StatelessWidget {
  const HomeInvestarBackOfficeScreen({
    super.key,
    required this.investarBackOfficeContent,
  });

  final ProjectContent investarBackOfficeContent;

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
                    investarBackOfficeContent.title,
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
                        investarBackOfficeContent.subtitle,
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
              child: investarBackOfficeContent.images.first.image.image(),
            ),
          ),
        ],
      ),
    );
  }
}
