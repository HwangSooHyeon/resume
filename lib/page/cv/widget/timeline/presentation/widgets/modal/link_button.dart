import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';
import 'package:resume/page/cv/widget/timeline/utils/url_utils.dart';

class LinkButton extends StatefulWidget {
  const LinkButton({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => UrlUtils.launchUrlOrCatch(widget.url),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: const Cubic(0.0, 0.0, 0.5, 1.0),
            transformAlignment: Alignment.center,
            transform: Matrix4.identity()..scale(isHovered ? 1.02 : 1),
            decoration: BoxDecoration(
              color: context.colorScheme.primary,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(isHovered ? 0.16 : 0.08),
                  offset: const Offset(2, 4),
                  blurRadius: isHovered ? 15 : 10,
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.code,
                    size: 18,
                    color: context.colorScheme.onPrimary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "Github Repository - ${UrlUtils.getRepositoryName(widget.url)}",
                      style: CustomTextTheme.regularTextStyle(
                        fontSize: 14,
                        color: context.colorScheme.onPrimary,
                      ),
                    ),
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
