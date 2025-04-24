import 'package:flutter/material.dart';

/// A widget that applies a transition and transform effect to its child
class TransitionTransformWidget extends StatefulWidget {
  /// This widget lets you perform tasks such as:
  /// * [duration]: The duration of the animation.
  /// * [beginOffset]: The initial offset of the animation.
  /// * [scale]: The scale of the animation.
  /// * [curve]: The curve of the animation.
  /// * [displayOnce]: Whether to display the animation only once.
  const TransitionTransformWidget({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 600),
    this.beginOffset = const Offset(0, 10),
    this.scale = 1.2,
    this.curve = Curves.easeInOut,
    this.displayOnce = false,
  });

  final Widget child;
  final Duration duration;
  final Offset beginOffset;
  final double scale;
  final Curve curve;
  final bool displayOnce;

  @override
  State<TransitionTransformWidget> createState() =>
      _TransitionTransformWidgetState();
}

class _TransitionTransformWidgetState extends State<TransitionTransformWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _positionAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat(reverse: !widget.displayOnce);

    _positionAnimation = Tween<Offset>(
      begin: widget.beginOffset,
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: widget.curve,
      ),
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: widget.scale,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.translate(
            offset: _positionAnimation.value,
            child: Transform.scale(
              scale: _scaleAnimation.value,
              child: widget.child,
            ),
          );
        },
      ),
    );
  }
}
