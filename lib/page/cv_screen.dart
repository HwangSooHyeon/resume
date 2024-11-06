import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvScreen extends StatelessWidget {
  static const String path = '/cv';
  const CvScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.locale!.cv),
    );
  }
}
