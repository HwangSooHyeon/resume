import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class TimelineModel {
  TimelineModel({
    required this.startDate,
    required this.endDate,
    this.color,
    required this.label,
    this.toolTip,
    this.onTap,
  });

  final DateTime startDate;
  final DateTime endDate;
  final Color? color;
  final String label;
  final String? toolTip;
  final VoidCallback? onTap;
}

class Timeline extends StatefulWidget {
  const Timeline({
    super.key,
    this.height,
    required this.timelines,
  });

  final double? height;
  final List<TimelineModel> timelines;

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  int _calculatePosition(TimelineModel timeline) {
    return (timeline.startDate.year - 2020) * 12 + timeline.startDate.month - 1;
  }

  int _calculateWidth(TimelineModel timeline) {
    return DateUtils.monthDelta(timeline.startDate, timeline.endDate);
  }

  @override
  Widget build(BuildContext context) {
    final eachMonthWidth = (context.width - 200) / (12 * 5);
    return SizedBox(
      width: context.width - 200,
      height: widget.height ?? 50,
      child: Stack(
        children: widget.timelines.map(
          (timeline) {
            return Positioned(
              left: _calculatePosition(timeline) * eachMonthWidth,
              child: InkWell(
                onTap: timeline.onTap,
                onHover: (_) {},
                borderRadius:
                    timeline.color == null ? null : BorderRadius.circular(12),
                child: Container(
                  width: _calculateWidth(timeline) * eachMonthWidth,
                  height: widget.height ?? 50,
                  decoration: BoxDecoration(
                    color: timeline.color,
                    borderRadius: timeline.color == null
                        ? null
                        : BorderRadius.circular(12),
                    border: timeline.color == null
                        ? Border(
                            left: BorderSide(
                              color: context.colorScheme.onSurface,
                              width: 1,
                            ),
                          )
                        : null,
                  ),
                  child: Text(timeline.label),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
