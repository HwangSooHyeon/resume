import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';
import 'package:resume/page/cv/widget/timeline/domain/timeline_model.dart';
import 'package:resume/page/cv/widget/timeline/presentation/widgets/modal/timeline_modal.dart';
import 'package:resume/widget/common/hover_box_widget.dart';

class TimelineItem extends StatelessWidget {
  const TimelineItem({
    super.key,
    required this.timeline,
    required this.width,
    required this.isHovered,
    this.isDefaultDate = false,
    required this.onHoverChanged,
  });

  final TimelineModel timeline;
  final double width;
  final bool isHovered;
  final bool isDefaultDate;
  final ValueChanged<bool> onHoverChanged;

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
