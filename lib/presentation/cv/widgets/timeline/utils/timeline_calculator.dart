import 'package:flutter/material.dart';
import 'package:resume/presentation/cv/models/timeline_model.dart';

class TimelineCalculator {
  static int calculatePosition(TimelineModel timeline) {
    if (timeline.startDate.year < 2020) {
      return 0;
    }
    return (timeline.startDate.year - 2020) * 12 + timeline.startDate.month - 1;
  }

  static int calculateWidth(TimelineModel timeline) {
    if (timeline.startDate.year < 2020) {
      return DateUtils.monthDelta(DateTime(2020, 1), timeline.endDate) + 1;
    }
    return DateUtils.monthDelta(timeline.startDate, timeline.endDate) + 1;
  }
}
