// screens/cv_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';
import 'package:resume/presentation/cv/view_models/cv_view_model.dart';
import 'package:resume/presentation/cv/widgets/cv_profile_widget.dart';
import 'package:resume/presentation/cv/widgets/timeline/timeline_widget.dart';
import 'package:resume/presentation/cv/widgets/timeline/modal/timeline_modal.dart';

class CvScreen extends ConsumerWidget {
  static const String path = '/cv';
  const CvScreen({super.key});

  Widget _buildTitle() {
    return FadeSlideWidget(
      delay: animationDelay(order: 2),
      child: Container(
        padding: const EdgeInsets.only(top: 24, bottom: 32),
        alignment: Alignment.topLeft,
        child: const Text(
          'Time Line',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cvState = ref.watch(cvViewModelProvider);

    if (cvState.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (cvState.errorMessage != null) {
      return Center(child: Text(cvState.errorMessage!));
    }

    ref.listen(cvViewModelProvider.select((state) => state.selectedTimeline),
        (previous, current) {
      if (current != null && previous != current) {
        TimelineModal.show(context, current);
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(cvViewModelProvider.notifier).selectTimeline(null);
        });
      }
    });

    return FadeSlideWidget(
      delay: animationDelay(order: 0),
      child: Wrap(
        runSpacing: 30,
        children: [
          FadeSlideWidget(
            delay: animationDelay(order: 1),
            child: const CvProfileWidget(),
          ),
          Container(
            height: context.height - 164 - 264,
            width: context.width,
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              children: [
                _buildTitle(),
                FadeSlideWidget(
                  delay: animationDelay(order: 2),
                  child: Timeline(
                    timelines: cvState.yearLabels,
                  ),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 3),
                  child: Timeline(
                    timelines: cvState.educationExperience,
                    onTimelineSelected: (timeline) => ref
                        .read(cvViewModelProvider.notifier)
                        .selectTimeline(timeline),
                  ),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 4),
                  child: Timeline(
                    timelines: cvState.workExperience,
                    onTimelineSelected: (timeline) => ref
                        .read(cvViewModelProvider.notifier)
                        .selectTimeline(timeline),
                  ),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 5),
                  child: Timeline(
                    timelines: cvState.projectExperience1,
                    onTimelineSelected: (timeline) => ref
                        .read(cvViewModelProvider.notifier)
                        .selectTimeline(timeline),
                  ),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 6),
                  child: Timeline(
                    timelines: cvState.projectExperience2,
                    onTimelineSelected: (timeline) => ref
                        .read(cvViewModelProvider.notifier)
                        .selectTimeline(timeline),
                  ),
                ),
                FadeSlideWidget(
                  delay: animationDelay(order: 7),
                  child: Timeline(
                    timelines: cvState.projectExperience3,
                    onTimelineSelected: (timeline) => ref
                        .read(cvViewModelProvider.notifier)
                        .selectTimeline(timeline),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
