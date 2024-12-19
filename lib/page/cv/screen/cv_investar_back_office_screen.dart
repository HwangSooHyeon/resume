import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvInvestarBackOfficeScreen extends StatelessWidget {
  const CvInvestarBackOfficeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.locale!.cvInvestarBackOffice,
        ),
        Text(
          '2024-May ~ 2024-July',
        ),
        Text(
          context.locale!.cvInvestarBackOffice1,
        ),
        Text(
          context.locale!.cvInvestarBackOffice2,
        ),
      ],
    );
  }
}
