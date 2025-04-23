import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/page/cv/widget/timeline/domain/timeline_detail_model.dart';
import 'package:resume/page/cv/widget/timeline/presentation/widgets/modal/modal_content.dart';

class ModalBody extends StatelessWidget {
  const ModalBody({
    super.key,
    required this.detail,
    this.hasMultipleDetails = false,
    this.isFirstDetail = true,
    this.isLastDetail = true,
    this.onPrevious,
    this.onNext,
  });

  final TimelineDetailModel detail;
  final bool hasMultipleDetails;
  final bool isFirstDetail;
  final bool isLastDetail;
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 항상 좌측 영역 유지 (화살표 유무와 관계없이)
          Container(
            width: 50,
            color: Colors.transparent,
            child: hasMultipleDetails && !isFirstDetail
                ? Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onPrevious,
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: context.colorScheme.primary,
                          size: 18,
                        ),
                      ),
                    ),
                  )
                : null,
          ),

          // 내용
          Expanded(
            child: ModalContent(detail: detail),
          ),

          // 항상 우측 영역 유지 (화살표 유무와 관계없이)
          Container(
            width: 50,
            color: Colors.transparent,
            child: hasMultipleDetails && !isLastDetail
                ? Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onNext,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: context.colorScheme.primary,
                          size: 18,
                        ),
                      ),
                    ),
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
