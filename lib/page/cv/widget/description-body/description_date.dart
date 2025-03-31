import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/extension/date_time_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class DescriptionDate extends StatelessWidget {
  const DescriptionDate({
    super.key,
    required this.startDate,
    required this.endDate,
  });

  final DateTime startDate;
  final DateTime endDate;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${startDate.monthInEnglish}, ${startDate.year} ~ ${endDate.monthInEnglish}, ${endDate.year}',
      style: CustomTextTheme.regularTextStyle(fontSize: 20).copyWith(
        color: context.colorScheme.secondaryFixedDim,
      ),
    );
  }
}
