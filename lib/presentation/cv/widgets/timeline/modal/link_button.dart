import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/core/util/url_utils.dart';
import 'package:resume/presentation/core/widgets/hover_box_widget.dart';

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
      child: HoverBoxWidget(
        backgroundColor: context.colorScheme.primary,
        onTap: () => UrlUtils.launchUrlOrCatch(widget.url),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Icon(
                Icons.code,
                size: 18,
                color: context.colorScheme.onPrimary,
              ),
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
    );
  }
}
