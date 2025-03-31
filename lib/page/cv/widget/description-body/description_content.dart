import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class DescriptionContent extends StatelessWidget {
  const DescriptionContent({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: context.colorScheme.primary,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Flexible(
          child: Text(
            content,
            style: CustomTextTheme.regularTextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
