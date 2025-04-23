import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';
import 'package:resume/page/cv/widget/timeline/domain/timeline_model.dart';
import 'package:resume/page/cv/widget/timeline/presentation/widgets/modal/timeline_modal.dart';

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

  @override
  Widget build(BuildContext context) {
    final bool hasDetails = timeline.hasDetails;

    return MouseRegion(
      onEnter: (_) => onHoverChanged(true),
      onExit: (_) => onHoverChanged(false),
      cursor: hasDetails ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: () => _handleTap(context),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: const Cubic(0.0, 0.0, 0.5, 1.0),
          width: width,
          height: 48,
          transformAlignment: Alignment.center,
          transform: hasDetails
              ? (Matrix4.identity()..scale(isHovered ? 1.009 : 1))
              : null,
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(isHovered ? 0.16 : 0.08),
                offset: const Offset(2, 4),
                blurRadius: 20,
                spreadRadius: 0,
              ),
            ],
          ),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(left: 16),
          child: _buildLabel(context, hasDetails),
        ),
      ),
    );
  }

  Widget _buildLabel(BuildContext context, bool hasDetails) {
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
          color: Colors.white, // ShaderMask 기본 색상
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
}
