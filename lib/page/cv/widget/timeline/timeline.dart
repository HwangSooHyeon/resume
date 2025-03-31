import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class TimelineModel {
  TimelineModel({
    required this.startDate,
    required this.endDate,
    required this.label,
    this.onTap,
  });

  final DateTime startDate;
  final DateTime endDate;
  final String label;
  final VoidCallback? onTap;
}

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
  OverlayEntry? _overlayEntry;
  Color? _selectedBackgroundColor;
  Color? _selectedLabelColor;

  void setColor() {
    if (_selectedBackgroundColor != null && _selectedLabelColor != null) {
      return;
    }

    final List<(Color, Color)> colors = [
      (context.colorScheme.primary, context.colorScheme.onPrimary),
      (context.colorScheme.secondary, context.colorScheme.onSecondary),
      (context.colorScheme.tertiary, context.colorScheme.onTertiary),
      (
        context.colorScheme.primaryContainer,
        context.colorScheme.onPrimaryContainer
      ),
      (
        context.colorScheme.secondaryContainer,
        context.colorScheme.onSecondaryContainer
      ),
      (
        context.colorScheme.tertiaryContainer,
        context.colorScheme.onTertiaryContainer
      ),
      (context.colorScheme.primaryFixed, context.colorScheme.onPrimaryFixed),
      (
        context.colorScheme.secondaryFixed,
        context.colorScheme.onSecondaryFixed
      ),
      (context.colorScheme.tertiaryFixed, context.colorScheme.onTertiaryFixed),
    ];

    final selectedColors = colors[Random().nextInt(max(colors.length, 0))];

    _selectedBackgroundColor = selectedColors.$1;
    _selectedLabelColor = selectedColors.$2;
  }

  int _calculatePosition(TimelineModel timeline) {
    return (timeline.startDate.year - 2020) * 12 + timeline.startDate.month - 1;
  }

  int _calculateWidth(TimelineModel timeline) {
    return DateUtils.monthDelta(timeline.startDate, timeline.endDate) + 1;
  }

  void _showTooltip(
      BuildContext context, TimelineModel timeline, GlobalKey key) {
    _hideTooltip();

    // 위젯이 완전히 빌드된 후 오버레이 표시
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox? renderBox =
          key.currentContext?.findRenderObject() as RenderBox?;
      if (renderBox == null || !renderBox.attached) {
        return;
      }

      final position = renderBox.localToGlobal(Offset.zero);

      _overlayEntry = OverlayEntry(
        builder: (context) {
          return Positioned(
            top: position.dy,
            left: position.dx,
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(6),
              color: context.colorScheme.onSurface,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  timeline.label,
                  style: TextStyle(color: context.colorScheme.surface),
                ),
              ),
            ),
          );
        },
      );

      try {
        Overlay.of(context, debugRequiredFor: widget).insert(_overlayEntry!);
      } catch (e) {
        _overlayEntry = null;
        Logger().e('Error showing tooltip: $e');
      }
    });
  }

  void _hideTooltip() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setColor();
  }

  @override
  void dispose() {
    _hideTooltip();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final eachMonthWidth = (context.width - 200) / (12 * 6);
    return SizedBox(
      width: context.width - 200,
      height: 50,
      child: Stack(
        children: widget.timelines.map(
          (timeline) {
            final itemKey = GlobalKey();
            return Positioned(
              left: _calculatePosition(timeline) * eachMonthWidth,
              child: InkWell(
                key: itemKey,
                onTap: timeline.onTap ?? () {},
                onHover: (isHovering) {
                  if (isHovering) {
                    _showTooltip(context, timeline, itemKey);
                  } else {
                    _hideTooltip();
                  }
                },
                borderRadius:
                    widget.isDefaultDate ? BorderRadius.circular(12) : null,
                child: Container(
                  width: _calculateWidth(timeline) * eachMonthWidth,
                  height: 50,
                  decoration: BoxDecoration(
                    color:
                        widget.isDefaultDate ? null : _selectedBackgroundColor,
                    borderRadius:
                        widget.isDefaultDate ? null : BorderRadius.circular(12),
                    border: widget.isDefaultDate
                        ? Border(
                            left: BorderSide(
                              color: context.colorScheme.onSurface,
                              width: 2,
                            ),
                          )
                        : null,
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    timeline.label,
                    maxLines: 1,
                    style: CustomTextTheme.boldTextStyle(fontSize: 16).copyWith(
                      color: widget.isDefaultDate ? null : _selectedLabelColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
