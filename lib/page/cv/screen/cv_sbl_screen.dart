import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvSblScreen extends StatelessWidget {
  const CvSblScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.locale!.cvSbl,
        ),
        Text(
          '2023-August ~ 2024-December',
        ),
        Text(
          context.locale!.cvSbl1,
        ),
        Text(
          context.locale!.cvSbl2,
        ),
        Text(
          context.locale!.cvSbl3,
        ),
        Text(
          context.locale!.cvSbl4,
        ),
        Text(
          context.locale!.cvSbl5,
        ),
        Text(
          context.locale!.cvSbl6,
        ),
        Text(
          context.locale!.cvSbl7,
        ),
        Text(
          context.locale!.cvSbl8,
        ),
        Text(
          context.locale!.cvSbl9,
        ),
      ],
    );
  }
}
