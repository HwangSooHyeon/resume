import 'package:flutter/material.dart';

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
        body: body,
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}
