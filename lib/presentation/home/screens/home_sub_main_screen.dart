import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/core/util/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/common/widgets/scroll_aware_widget.dart';

class HomeSubMainScreen extends ConsumerWidget {
  const HomeSubMainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              context.locale!.homeTitle3,
              style: CustomTextTheme.boldTextStyle(fontSize: 32),
            ),
            Text(
              context.locale!.homeTitle4,
              style: CustomTextTheme.boldTextStyle(fontSize: 32),
            ),
            Text(
              context.locale!.homeTitle5,
              style: CustomTextTheme.boldTextStyle(fontSize: 32),
            ),
          ],
        ),
      ),
    );
  }
}
