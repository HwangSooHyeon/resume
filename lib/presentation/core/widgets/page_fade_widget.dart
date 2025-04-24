import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/core/extensions/build_context_extension.dart';

class PageFadeWidget extends StatefulWidget {
  const PageFadeWidget({
    super.key,
    this.backgroundImage,
    required this.children,
    this.transitionThreshold = 0.5,
    this.scrollSensitivity = 1.0,
  });

  final AssetGenImage? backgroundImage;
  final List<Widget> children;
  final double transitionThreshold;
  final double scrollSensitivity;

  @override
  State<PageFadeWidget> createState() => _PageFadeWidgetState();
}

class _PageFadeWidgetState extends State<PageFadeWidget> {
  // scroll unit for each page
  static const double kPageScrollUnit = 10.0;
  // current scroll value
  double _scrollValue = 0.0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateScrollValue);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_updateScrollValue);
    _scrollController.dispose();
    super.dispose();
  }

  void _updateScrollValue() {
    final newValue = _scrollController.offset.clamp(
      0.0,
      _getMaxScrollExtent(),
    );
    // Check if the new value is different from the current value
    if (_scrollValue != newValue) {
      setState(() {
        _scrollValue = newValue;
      });
    }
  }

  double _getMaxScrollExtent() {
    return (widget.children.length - 1) * kPageScrollUnit +
        (kPageScrollUnit / 2);
  }

  double _calculateOpacity(int index) {
    double result;
    final lastIndex = widget.children.length - 1;
    // first widget
    if (index == 0) {
      if (_scrollValue <= kPageScrollUnit / 2) {
        result = 1.0;
      } else {
        result = kPageScrollUnit - _scrollValue;
      }
      // last widget
    } else if (index == lastIndex) {
      final pageStartScroll = index * kPageScrollUnit;
      final relativeScroll = _scrollValue - pageStartScroll;

      if (relativeScroll < 0) {
        result = 0.0;
      } else if (relativeScroll <= kPageScrollUnit / 2) {
        result = relativeScroll / (kPageScrollUnit / 2);
      } else {
        result = 1.0;
      }
    } else {
      final pageStartScroll = index * kPageScrollUnit;
      final relativeScroll = _scrollValue - pageStartScroll;

      if (relativeScroll < 0 || relativeScroll > kPageScrollUnit) {
        result = 0.0;
      } else if (relativeScroll <= kPageScrollUnit / 2) {
        result = relativeScroll / (kPageScrollUnit / 2);
      } else {
        result = (kPageScrollUnit - relativeScroll) / (kPageScrollUnit / 2);
      }
    }
    return result.clamp(0.0, 1.0);
  }

  void _handleScroll(double delta) {
    if (_isLastPageFullyVisible() && delta > 0) {
      return;
    }

    double newScrollValue = _scrollValue + delta;
    newScrollValue = newScrollValue.clamp(0.0, _getMaxScrollExtent());

    if (newScrollValue != _scrollValue) {
      setState(() {
        _scrollValue = newScrollValue;
      });
    }
  }

  void _handleMouseScroll(PointerScrollEvent event) {
    _handleScroll(event.scrollDelta.dy * widget.scrollSensitivity * 0.01);
  }

  bool _isLastPageFullyVisible() {
    final lastIndex = widget.children.length - 1;
    final pageStartScroll = lastIndex * kPageScrollUnit;
    final relativeScroll = _scrollValue - pageStartScroll;

    return relativeScroll >= kPageScrollUnit / 2;
  }

  double _calculateBackgroundScale() {
    final lastIndex = widget.children.length - 1;
    final lastPageStartScroll = (lastIndex - 1) * kPageScrollUnit;
    final progress = (_scrollValue / lastPageStartScroll).clamp(0.0, 1.0);

    return 1.0 + (0.5 * progress);
  }

  double _calculateBackgroundOpacity() {
    final lastIndex = widget.children.length - 1;
    final lastPageStartScroll = (lastIndex - 1) * kPageScrollUnit;
    final progress = (_scrollValue / lastPageStartScroll).clamp(0.0, 1.0);

    return 1.0 - progress;
  }

  Widget _buildBackground(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      transform: Matrix4.identity()..scale(_calculateBackgroundScale()),
      transformAlignment: Alignment.center,
      child: AnimatedOpacity(
        opacity: _calculateBackgroundOpacity(),
        duration: const Duration(milliseconds: 200),
        child: _buildBackgroundContent(context),
      ),
    );
  }

  Widget _buildBackgroundContent(BuildContext context) {
    return widget.backgroundImage != null
        ? Stack(
            children: [
              widget.backgroundImage!.image(
                height: context.height,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  color: Colors.black.withOpacity(0),
                ),
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: (context.width - 200) * 0.9,
                      maxHeight: (context.height - 164) * 0.9,
                    ),
                    child: widget.backgroundImage!.image(
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          )
        : const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (signal) {
        if (signal is PointerScrollEvent) {
          _handleMouseScroll(signal);
        }
      },
      child: GestureDetector(
        onVerticalDragUpdate: (details) {
          _handleScroll(details.delta.dy * widget.scrollSensitivity * 0.01);
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.transparent,
          child: Stack(
            fit: StackFit.expand,
            children: [
              _buildBackground(context),
              ...widget.children.asMap().entries.map((entry) {
                final index = entry.key;
                final child = entry.value;
                final opacity = _calculateOpacity(index);

                if (opacity <= 0.001) {
                  return const SizedBox.shrink();
                }

                return Center(
                  child: AnimatedOpacity(
                    opacity: opacity,
                    duration: const Duration(milliseconds: 200),
                    child: child,
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
