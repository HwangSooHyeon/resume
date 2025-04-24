import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';

class CardDivider extends StatelessWidget {
  const CardDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2,
      width: 40,
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.circular(1),
      ),
    );
  }
}
