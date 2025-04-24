import 'package:flutter/material.dart';

class GeneralDialog extends StatelessWidget {
  final Widget child;
  final VoidCallback onDismiss;

  const GeneralDialog({
    required this.child,
    required this.onDismiss,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onDismiss,
        child: GestureDetector(
          onTap: () {}, // prevents the dialog from closing when tapping inside
          child: child,
        ),
      ),
    );
  }
}
