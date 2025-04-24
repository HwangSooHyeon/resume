import 'package:resume/presentation/cv/models/timeline_detail_model.dart';

class TimelineModel {
  TimelineModel({
    required this.startDate,
    required this.endDate,
    required this.label,
    this.details,
  });

  final DateTime startDate;
  final DateTime endDate;
  final String label;
  final List<TimelineDetailModel>? details;

  bool get isYearLabel => int.tryParse(label) != null;
  bool get hasDetails => details != null && details!.isNotEmpty;
}
