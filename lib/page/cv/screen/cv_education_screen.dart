import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvEducationScreen extends StatelessWidget {
  const CvEducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(context.locale!.cvEducation),
        Text(
          context.locale!.cvEducationUniversity,
        ),
        Text(
          context.locale!.cvEducationUniversity1,
        ),
        Text(
          '2020-March ~ 2020-August',
        ),
        Text(
          context.locale!.cvEducationUniversity2,
        ),
        Text(
          '2013-March ~ 2020-Fabruary',
        ),
      ],
    );
  }
}
