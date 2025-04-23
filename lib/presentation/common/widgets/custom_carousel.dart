import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key, required this.children, this.width, this.height});

  final List<Widget> children;
  final double? width;
  final double? height;

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 650,
      width: widget.width ?? 300,
      child: CarouselSlider.builder(
        itemCount: widget.children.length,
        itemBuilder: (_, itemIndex, __) => widget.children[itemIndex],
        options: CarouselOptions(
          viewportFraction: 1,
          disableCenter: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 500),
          autoPlayCurve: Curves.decelerate,
          pauseAutoPlayOnTouch: true,
        ),
      ),
    );
  }
}
