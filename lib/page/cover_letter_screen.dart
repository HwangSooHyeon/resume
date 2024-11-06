import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CoverLetterScreen extends StatelessWidget {
  static const String path = '/coverLetter';
  const CoverLetterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.locale!.coverLetter),
    );
  }
}
