import 'package:flutter/material.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

enum SkillsEnum {
  programmingLanguage(label: 'Programming Language'),
  library(label: 'Library'),
  technique(label: 'Technique'),
  coWork(label: 'Co-work'),
  ide(label: 'IDE');

  final String label;

  const SkillsEnum({required this.label});

  GlobalKey get key => GlobalKey();
  Widget get widget => _renderWidget();

  Widget _renderWidget() => Padding(
        padding: EdgeInsets.only(bottom: this == ide ? 0 : 40),
        child: Text(
         label,
          style: CustomTextTheme.boldTextStyle(fontSize: 32),
        ),
      );
}
