import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/core/extensions/build_context_extension.dart';

final intersectionObserverProvider = Provider<IntersectionObserver>((ref) {
  final observer = IntersectionObserver();
  ref.onDispose(() {
    observer.dispose();
  });
  return observer;
});

typedef VisibilityChangedCallback = void Function(double visibleFraction);

/// An Intersection Observer implementation for Flutter.
class IntersectionObserver {
  final Map<GlobalKey, VisibilityChangedCallback> _observedElements = {};
  bool _isObserving = false;
  DateTime _lastUpdateTime = DateTime.now();
  final int _throttleMilliseconds = 100;

  void observe(GlobalKey key, VisibilityChangedCallback callback) {
    _observedElements[key] = callback;
    if (!_isObserving) {
      _startObserving();
    }
  }

  void unobserve(GlobalKey key) {
    _observedElements.remove(key);
    if (_observedElements.isEmpty) {
      _stopObserving();
    }
  }

  void _startObserving() {
    _isObserving = true;
    SchedulerBinding.instance.addPostFrameCallback(_checkVisibility);
  }

  void _stopObserving() {
    _isObserving = false;
  }

  void _checkVisibility(Duration _) {
    if (!_isObserving) return;

    // throttle
    final now = DateTime.now();
    if (now.difference(_lastUpdateTime).inMilliseconds <
        _throttleMilliseconds) {
      SchedulerBinding.instance.addPostFrameCallback(_checkVisibility);
      return;
    }
    _lastUpdateTime = now;

    for (final entry in _observedElements.entries) {
      final key = entry.key;
      final callback = entry.value;

      final context = key.currentContext;
      if (context == null) continue;

      final box = context.findRenderObject() as RenderBox?;
      if (box == null) continue;

      final screenSize = context.mediaQueryData.size;
      final position = box.localToGlobal(Offset.zero);
      final size = box.size;

      // is the widget actually visible on the screen
      final isActuallyVisible = position.dy <
              screenSize.height && // is it above lower boundary of screen
          position.dy + size.height > 0; // is it under upper boundary of screen

      // if not visible, set visibility to 0
      if (!isActuallyVisible) {
        callback(0.0);
        continue;
      }

      // calculate visible height
      double visibleHeight = 0;
      if (position.dy < 0) {
        visibleHeight = size.height + position.dy;
      } else if (position.dy + size.height > screenSize.height) {
        visibleHeight = screenSize.height - position.dy;
      } else {
        visibleHeight = size.height;
      }

      // calculate where is widget center
      final widgetCenter = position.dy + (size.height / 2);
      final screenCenter = screenSize.height / 2;

      // distance between widget center and screen center
      final distanceFromCenter = (widgetCenter - screenCenter).abs();
      final maxDistance = screenSize.height / 2 + (size.height / 2);

      // center factor: how close is the widget center to the screen center
      final centerFactor =
          1.0 - (distanceFromCenter / maxDistance).clamp(0.0, 1.0);

      // calculate visibility fraction: how much of the widget is visible on the screen
      final visibilityFraction =
          ((visibleHeight / size.height) * centerFactor * 1.5).clamp(0.0, 1.0);

      callback(visibilityFraction);
    }

    SchedulerBinding.instance.addPostFrameCallback(_checkVisibility);
  }

  void dispose() {
    _observedElements.clear();
    _stopObserving();
  }
}
