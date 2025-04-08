import 'package:flutter/material.dart';
import 'package:resume/asset/gen/assets.gen.dart';

class HomeImageBoxWidget extends StatefulWidget {
  const HomeImageBoxWidget({
    super.key,
    required this.child,
  });

  final AssetGenImage child;

  @override
  State<HomeImageBoxWidget> createState() => _HomeImageBoxWidgetState();
}

class _HomeImageBoxWidgetState extends State<HomeImageBoxWidget> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: const Cubic(0.0, 0.0, 0.5, 1.0),
        width: 300,
        height: 650,
        transformAlignment: Alignment.center,
        transform: Matrix4.identity()..scale(_isHovered ? 1.009 : 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: _isHovered ? 0.16 : 0.08),
              offset: const Offset(2, 4),
              blurRadius: 20,
              spreadRadius: 0,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: widget.child.image(
            width: 300,
            height: 650,
          ),
        ),
      ),
    );
  }
}
