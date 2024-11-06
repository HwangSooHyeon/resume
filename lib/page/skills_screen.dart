import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class SkillsScreen extends StatelessWidget {
  static const String path = '/skills';
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.locale!.skills),
    );
  }
}
