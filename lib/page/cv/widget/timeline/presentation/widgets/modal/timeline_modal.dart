import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/page/cv/widget/timeline/domain/timeline_model.dart';
import 'package:resume/page/cv/widget/timeline/domain/timeline_detail_model.dart';
import 'package:resume/page/cv/widget/timeline/utils/timeline_formatter.dart';
import 'package:resume/page/cv/widget/timeline/presentation/widgets/modal/modal_header.dart';
import 'package:resume/page/cv/widget/timeline/presentation/widgets/modal/modal_body.dart';

class TimelineModal {
  static void show(BuildContext context, TimelineModel timeline) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Timeline Detail",
      barrierColor: Colors.black.withOpacity(0.6),
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: _buildTransition,
      pageBuilder: (_, __, ___) => _TimelineDetailView(timeline: timeline),
    );
  }

  static Widget _buildTransition(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    final curve = CurvedAnimation(
      parent: animation,
      curve: Curves.easeOutBack,
    );

    return ScaleTransition(
      scale: Tween<double>(begin: 0.8, end: 1.0).animate(curve),
      child: FadeTransition(
        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curve),
        child: child,
      ),
    );
  }
}

class _TimelineDetailView extends StatefulWidget {
  const _TimelineDetailView({required this.timeline});

  final TimelineModel timeline;

  @override
  State<_TimelineDetailView> createState() => _TimelineDetailViewState();
}

class _TimelineDetailViewState extends State<_TimelineDetailView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final details = widget.timeline.details!;
    final hasMultipleDetails = details.length > 1;
    final isFirstDetail = currentIndex == 0;
    final isLastDetail = currentIndex == details.length - 1;

    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          constraints: BoxConstraints(maxWidth: 800),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: IntrinsicHeight(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ModalHeader(
                    label: widget.timeline.label,
                    dateRange: TimelineFormatter.formatDateRange(
                      widget.timeline.startDate,
                      widget.timeline.endDate,
                    ),
                    currentIndex: currentIndex,
                    totalItems: details.length,
                    onClose: () => context.pop(),
                  ),
                  ModalBody(
                    detail: details[currentIndex],
                    hasMultipleDetails: hasMultipleDetails,
                    isFirstDetail: isFirstDetail,
                    isLastDetail: isLastDetail,
                    onPrevious: isFirstDetail
                        ? null
                        : () => setState(() => currentIndex--),
                    onNext: isLastDetail
                        ? null
                        : () => setState(() => currentIndex++),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
