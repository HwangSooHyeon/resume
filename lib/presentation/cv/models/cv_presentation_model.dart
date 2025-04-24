import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resume/presentation/cv/models/timeline_model.dart';

part 'cv_presentation_model.freezed.dart';

@freezed
abstract class CvPresentationState with _$CvPresentationState {
  const factory CvPresentationState({
    @Default([]) List<TimelineModel> yearLabels,
    @Default([]) List<TimelineModel> workExperience,
    @Default([]) List<TimelineModel> projectExperience1,
    @Default([]) List<TimelineModel> projectExperience2,
    @Default([]) List<TimelineModel> projectExperience3,
    @Default([]) List<TimelineModel> educationExperience,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    TimelineModel? selectedTimeline,
  }) = _CvPresentationState;
}
