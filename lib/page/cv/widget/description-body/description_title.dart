import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class DescriptionTitle extends StatelessWidget {
  const DescriptionTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: CustomTextTheme.boldTextStyle(fontSize: 28).copyWith(
        color: context.colorScheme.primary,
      ),
    );
  }
}
