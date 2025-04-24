import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/presentation/cv/models/timeline_model.dart';
import 'package:resume/presentation/cv/widgets/timeline/utils/timeline_calculator.dart';
import 'package:resume/presentation/cv/widgets/timeline/components/timeline_item.dart';
import 'package:resume/presentation/cv/widgets/timeline/components/timeline_year_label.dart';
import 'package:collection/collection.dart';

class Timeline extends StatelessWidget {
  final List<TimelineModel> timelines;
  final ValueChanged<TimelineModel>? onTimelineSelected;

  const Timeline({
    super.key,
    required this.timelines,
    this.onTimelineSelected,
  });

  void _handleTimelineSelected(TimelineModel timeline) {
    if (timeline.details?.isNotEmpty == true && onTimelineSelected != null) {
      onTimelineSelected!(timeline);
    }
  }

  @override
  Widget build(BuildContext context) {
    final eachMonthWidth = (context.width - 200) / (12 * 6);
    return SizedBox(
      width: context.width - 200,
      height: 60,
      child: Stack(
        children: timelines.mapIndexed(
          (index, timeline) {
            final width =
                TimelineCalculator.calculateWidth(timeline) * eachMonthWidth;
            final left =
                TimelineCalculator.calculatePosition(timeline) * eachMonthWidth;

            return Positioned(
              left: left,
              top: 5,
              child: GestureDetector(
                onTap: () => _handleTimelineSelected(timeline),
                child: timeline.isYearLabel
                    ? TimelineYearLabel(
                        timeline: timeline,
                        width: width,
                      )
                    : TimelineItem(
                        timeline: timeline,
                        width: width,
                        isDefaultDate: false,
                      ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
