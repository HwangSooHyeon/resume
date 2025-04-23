import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/page/cv/widget/timeline/domain/timeline_model.dart';
import 'package:resume/page/cv/widget/timeline/utils/timeline_calculator.dart';
import 'package:resume/page/cv/widget/timeline/presentation/widgets/timeline_item.dart';
import 'package:resume/page/cv/widget/timeline/presentation/widgets/timeline_year_label.dart';
import 'package:collection/collection.dart';

class Timeline extends StatefulWidget {
  const Timeline._({
    required this.timelines,
    this.isDefaultDate = false,
  });

  const Timeline({
    super.key,
    required this.timelines,
  }) : isDefaultDate = false;

  final List<TimelineModel> timelines;
  final bool isDefaultDate;

  factory Timeline.defaultDate({required List<TimelineModel> timelines}) {
    return Timeline._(
      timelines: timelines,
      isDefaultDate: true,
    );
  }

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  final Map<String, bool> _hoveredItems = {};

  @override
  Widget build(BuildContext context) {
    final eachMonthWidth = (context.width - 200) / (12 * 6);
    return SizedBox(
      width: context.width - 200,
      height: 60,
      child: Stack(
        children: widget.timelines.mapIndexed(
          (index, timeline) {
            final width =
                TimelineCalculator.calculateWidth(timeline) * eachMonthWidth;
            final left =
                TimelineCalculator.calculatePosition(timeline) * eachMonthWidth;
            final uniqueId = '${timeline.label}-$index';
            final isHovered = _hoveredItems[uniqueId] ?? false;

            return Positioned(
              left: left,
              top: 5,
              child: timeline.isYearLabel
                  ? TimelineYearLabel(
                      timeline: timeline,
                      width: width,
                    )
                  : TimelineItem(
                      timeline: timeline,
                      width: width,
                      isHovered: isHovered,
                      isDefaultDate: widget.isDefaultDate,
                      onHoverChanged: (value) {
                        setState(() => _hoveredItems[uniqueId] = value);
                      },
                    ),
            );
          },
        ).toList(),
      ),
    );
  }
}
