import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/util/observer/intersection_observer.dart';

/// A widget that animates its child when it becomes visible in the viewport.
///
/// This widget uses an [IntersectionObserver] to detect when the child widget
/// is visible in the viewport.
class ScrollAwareWidget extends ConsumerStatefulWidget {
  /// This widget lets you perform tasks such as:
  /// * [animationThreshold]: The threshold for the animation to start.
  /// * [duration]: The duration of the animation.
  /// * [beginOffset]: The initial offset of the animation.
  /// * [curve]: The curve of the animation.
  /// * [displayOnce]: Whether to display the animation only once.
  /// * [fadeIn]: Whether to fade in the widget.
  /// * [slide]: Whether to slide the widget.
  const ScrollAwareWidget({
    super.key,
    required this.child,
    this.animationThreshold = 0.5,
    this.duration = const Duration(milliseconds: 600),
    this.beginOffset = const Offset(0, 0.5),
    this.curve = Curves.easeInOut,
    this.displayOnce = true,
    this.fadeIn = true,
    this.slide = true,
  });

  final Widget child;
  final double animationThreshold;
  final Duration duration;
  final Offset beginOffset;
  final Curve curve;
  final bool displayOnce;
  final bool fadeIn;
  final bool slide;

  @override
  ConsumerState<ScrollAwareWidget> createState() => _ScrollAwareWidgetState();
}

class _ScrollAwareWidgetState extends ConsumerState<ScrollAwareWidget>
    with SingleTickerProviderStateMixin {
  final GlobalKey _widgetKey = GlobalKey();
  late AnimationController _controller;
  late final IntersectionObserver _intersectionObserver;
  bool _hasAnimated = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _intersectionObserver = ref.read(intersectionObserverProvider);
        _intersectionObserver.observe(_widgetKey, _handleVisibilityChanged);
      }
    });
  }

  @override
  void dispose() {
    if (mounted) {
      _intersectionObserver.unobserve(_widgetKey);
    }
    _controller.dispose();
    super.dispose();
  }

  void _handleVisibilityChanged(double visibleFraction) {
    // log for debugging
    // print('Visibility for ${widget.child.runtimeType}: $visibleFraction');

    // case after animation was already completed
    if (_hasAnimated && widget.displayOnce) return;

    // animation starts after the widget visible fraction exceeds the threshold
    if (visibleFraction > widget.animationThreshold) {
      if (!_controller.isAnimating && _controller.value < 1.0) {
        _controller.forward();
        if (widget.displayOnce) {
          _hasAnimated = true;
        }
      }
    } else if (!widget.displayOnce && _controller.value > 0) {
      _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: _widgetKey,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          // fadeIn
          final opacity = widget.fadeIn
              ? Tween<double>(begin: 0.0, end: 1.0).evaluate(_controller)
              : 1.0;

          // slide
          final offset = widget.slide
              ? Tween<Offset>(begin: widget.beginOffset, end: Offset.zero)
                  .evaluate(
                      CurvedAnimation(parent: _controller, curve: widget.curve))
              : Offset.zero;

          return Opacity(
            opacity: opacity,
            child: Transform.translate(
              offset: Offset(offset.dx * 100, offset.dy * 100),
              child: widget.child,
            ),
          );
        },
      ),
    );
  }
}
