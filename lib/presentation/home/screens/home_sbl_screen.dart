import 'package:flutter/material.dart';
import 'package:resume/presentation/home/models/home_model.dart';
import 'package:resume/presentation/home/widgets/home_image_box_widget.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/core/widgets/scroll_aware_widget.dart';
import 'package:collection/collection.dart';

class HomeSblScreen extends StatelessWidget {
  const HomeSblScreen({
    super.key,
    required this.sblContent,
  });

  final ProjectContent sblContent;

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
                  sblContent.title,
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
                      sblContent.subtitle,
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
                      sblContent.description,
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
              children: sblContent.images
                  .mapIndexed(
                    (i, e) => ScrollAwareWidget(
                      delay: animationDelay(order: i),
                      animationThreshold: 0.15,
                      child: HomeImageBoxWidget(
                        child: e.image,
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
