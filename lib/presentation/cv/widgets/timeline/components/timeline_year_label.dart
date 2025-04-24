import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/domain/entities/timeline_model.dart';

class TimelineYearLabel extends StatelessWidget {
  const TimelineYearLabel({
    super.key,
    required this.timeline,
    required this.width,
  });

  final TimelineModel timeline;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 36,
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: context.colorScheme.onSurface.withValues(alpha: 0.6),
            width: 2,
          ),
        ),
      ),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 8),
      child: Text(
        timeline.label,
        style: CustomTextTheme.boldTextStyle(
          fontSize: 16,
          color: context.colorScheme.onSurface,
        ),
      ),
    );
  }
}
