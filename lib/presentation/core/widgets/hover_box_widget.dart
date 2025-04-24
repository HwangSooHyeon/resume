import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';

class HoverBoxWidget extends StatefulWidget {
  const HoverBoxWidget({
    super.key,
    this.onTap,
    this.backgroundColor,
    this.borderRadius,
    this.width,
    this.height,
    this.alignment,
    this.padding,
    this.margin,
    required this.child,
  });

  final VoidCallback? onTap;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget child;

  @override
  State<HoverBoxWidget> createState() => _HoverBoxWidgetState();
}

class _HoverBoxWidgetState extends State<HoverBoxWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: const Cubic(0.0, 0.0, 0.5, 1.0),
          width: widget.width,
          height: widget.height,
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()..scale(isHovered ? 1.009 : 1),
          decoration: BoxDecoration(
            color: widget.backgroundColor ?? context.colorScheme.surface,
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: isHovered ? 0.16 : 0.08),
                offset: const Offset(2, 4),
                blurRadius: isHovered ? 15 : 10,
                spreadRadius: 0,
              ),
            ],
          ),
          alignment: widget.alignment,
          padding: widget.padding,
          margin: widget.margin,
          child: widget.child,
        ),
      ),
    );
  }
}
