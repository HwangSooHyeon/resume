import 'package:flutter/material.dart';

class CustomAnimatedInkWell extends StatefulWidget {
  const CustomAnimatedInkWell({
    super.key,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
    this.onTap,
    required this.child,
  });

  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final Function()? onTap;
  final Widget child;

  @override
  State<CustomAnimatedInkWell> createState() => _CustomAnimatedInkWellState();
}

class _CustomAnimatedInkWellState extends State<CustomAnimatedInkWell> {
  double _scale = 1;

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: widget.width,
      height: widget.height,
      padding: widget.padding == null
          ? null
          : EdgeInsets.symmetric(
              horizontal: widget.padding!.horizontal * 0.4,
              vertical: widget.padding!.vertical * 0.4,
            ),
      child: InkWell(
        onTap: widget.onTap,
        onTapDown: (_) {
          setState(() {
            _scale = 0.975;
          });
        },
        borderRadius: widget.borderRadius,
        child: Ink(
          width: widget.width == null
              ? null
              : widget.width! - (widget.padding?.horizontal ?? 0) * 2,
          padding: widget.padding == null
              ? null
              : EdgeInsets.symmetric(
                  horizontal: widget.padding!.horizontal * 0.6,
                  vertical: widget.padding!.vertical * 0.6,
                ),
          child: AnimatedScale(
            scale: _scale,
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            onEnd: () {
              setState(() {
                _scale = 1;
              });
            },
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
