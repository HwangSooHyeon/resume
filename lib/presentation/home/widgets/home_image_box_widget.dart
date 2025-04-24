import 'package:flutter/material.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/presentation/core/widgets/hover_box_widget.dart';

class HomeImageBoxWidget extends StatelessWidget {
  const HomeImageBoxWidget({
    super.key,
    required this.child,
  });

  final AssetGenImage child;

  @override
  Widget build(BuildContext context) {
    return HoverBoxWidget(
      width: 300,
      height: 650,
      borderRadius: 32,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(28),
        child: child.image(
          width: 300,
          height: 650,
        ),
      ),
    );
  }
}
