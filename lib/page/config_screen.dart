import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class ConfigScreen extends StatelessWidget {
  static const String path = '/config';
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(context.locale!.config),
    );
  }
}
