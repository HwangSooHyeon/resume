import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/cv/models/timeline_model.dart';
import 'package:resume/presentation/cv/widgets/timeline/modal/timeline_modal.dart';
import 'package:resume/presentation/core/widgets/hover_box_widget.dart';

class TimelineItem extends StatelessWidget {
  const TimelineItem({
    super.key,
    required this.timeline,
    required this.width,
    this.isDefaultDate = false,
  });

  final TimelineModel timeline;
  final double width;
  final bool isDefaultDate;

  Widget _buildItem(BuildContext context, bool hasDetails) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: hasDetails
            ? [context.colorScheme.primary, context.colorScheme.secondary]
            : [context.colorScheme.onSurface, context.colorScheme.onSurface],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Text(
        timeline.label,
        style: CustomTextTheme.boldTextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  void _handleTap(BuildContext context) {
    if (timeline.isYearLabel || !timeline.hasDetails) {
      return;
    }
    TimelineModal.show(context, timeline);
  }

  @override
  Widget build(BuildContext context) {
    final bool hasDetails = timeline.hasDetails;
    return HoverBoxWidget(
      onTap: () => _handleTap(context),
      width: width,
      height: 48,
      borderRadius: 32,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16),
      child: _buildItem(context, hasDetails),
    );
  }
}
