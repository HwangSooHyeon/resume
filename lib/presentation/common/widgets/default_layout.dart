import 'package:flutter/material.dart';
import 'package:resume/core/util/function/duration.dart';
import 'package:resume/presentation/common/widgets/fade_slide_widget.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    super.key,
    required this.body,
    this.bottomNavigationBar,
    this.canPop = false,
    this.onPopInvokedWithResult,
  });

  final Widget body;
  final Widget? bottomNavigationBar;
  final bool canPop;
  final PopInvokedWithResultCallback<dynamic>? onPopInvokedWithResult;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: onPopInvokedWithResult,
      child: Scaffold(
        body: FadeSlideWidget(
          delay: animationDelay(order: 0),
          child: body,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
