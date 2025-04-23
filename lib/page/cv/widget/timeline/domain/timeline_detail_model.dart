import 'package:flutter/material.dart';

class TimelineDetailModel {
  TimelineDetailModel({
    required this.title,
    this.subTitle,
    this.descriptions = const [],
    this.image,
  });

  final String title;
  final String? subTitle;
  final List<String> descriptions;
  final Widget? image;
}
