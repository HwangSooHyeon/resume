import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_color_scheme.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';

class CoverLetterImageBoxWidget extends StatefulWidget {
  final AssetGenImage image;
  final String title;
  final List<String> description;

  const CoverLetterImageBoxWidget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  State<CoverLetterImageBoxWidget> createState() =>
      _CoverLetterImageBoxWidgetState();
}

class _CoverLetterImageBoxWidgetState extends State<CoverLetterImageBoxWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    double boxHeight = _calculateBoxHeight(context);
    double boxWidth = _calculateBoxWidth(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: const Cubic(0.0, 0.0, 0.5, 1.0),
        width: boxWidth,
        height: boxHeight,
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..scale(_isHovered ? 1.009 : 1),
        decoration: _buildBoxDecoration(),
        child: _buildContent(boxWidth, boxHeight),
      ),
    );
  }

  double _calculateBoxHeight(BuildContext context) {
    return (context.height - 164 - (36 + 56 + 30 + 30 + 30 + 30 + 30)) / 2;
  }

  double _calculateBoxWidth(BuildContext context) {
    return (context.width - 30) / 4;
  }

  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(32),
      color: CustomColorScheme.darkColorScheme.surface,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(alpha: _isHovered ? 0.16 : 0.08),
          offset: const Offset(2, 4),
          blurRadius: 20,
          spreadRadius: 0,
        ),
      ],
    );
  }

  Widget _buildContent(double width, double height) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildBackgroundImage(width, height),
        _buildTextContent(),
      ],
    );
  }

  Widget _buildBackgroundImage(double width, double height) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Stack(
        children: [
          widget.image.image(
            width: width,
            height: height,
            opacity: const AlwaysStoppedAnimation(0.85),
            fit: BoxFit.fill,
          ),
          if (_isHovered)
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                width: width,
                height: height,
                color: Colors.black.withValues(alpha: 0),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildTextContent() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
            _isHovered ? CrossAxisAlignment.start : CrossAxisAlignment.center,
        spacing: 24,
        children: [
          Text(
            widget.title,
            style: CustomTextTheme.boldTextStyle(
              fontSize: 32,
              color: Colors.white,
            ),
          ),
          if (!_isHovered)
            const Icon(
              Icons.add_circle_outline_rounded,
              color: Colors.white,
              size: 32,
            ),
          if (_isHovered)
            ...widget.description.map(
              (e) => FadeSlideWidget(
                child: Text(
                  e,
                  style: CustomTextTheme.boldTextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
