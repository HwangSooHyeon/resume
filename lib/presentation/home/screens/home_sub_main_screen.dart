import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/scroll_aware_widget.dart';

class HomeSubMainScreen extends StatelessWidget {
  const HomeSubMainScreen({
    super.key,
    required this.title3,
    required this.title4,
    required this.title5,
  });

  final String title3;
  final String title4;
  final String title5;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      color: context.colorScheme.surface,
      padding: const EdgeInsets.symmetric(vertical: 120),
      child: ScrollAwareWidget(
        animationThreshold: 0.5,
        duration: const Duration(milliseconds: 600),
        beginOffset: const Offset(0, 0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 40,
          children: [
            Text(
              title3,
              style: CustomTextTheme.boldTextStyle(fontSize: 32),
            ),
            Text(
              title4,
              style: CustomTextTheme.boldTextStyle(fontSize: 32),
            ),
            Text(
              title5,
              style: CustomTextTheme.boldTextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
