import 'package:flutter/material.dart';

class DialogService {
  static Future<T?> showCustomDialog<T>({
    required BuildContext context,
    required WidgetBuilder builder,
  }) {
    return showGeneralDialog<T>(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Custom Dialog",
      barrierColor: Colors.black.withValues(alpha: 0.6),
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final curve = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutBack,
        );

        return ScaleTransition(
          scale: Tween<double>(begin: 0.8, end: 1.0).animate(curve),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curve),
            child: child,
          ),
        );
      },
      pageBuilder: (context, _, __) => builder(context),
    );
  }
}
