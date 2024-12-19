import 'package:flutter/material.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class CvHectoScreen extends StatelessWidget {
  const CvHectoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.locale!.cvHectoFinancial,
        ),
        Text(
          '2021-November ~ 2022-August',
        ),
        Text(
          context.locale!.cvHectoFinancial1,
        ),
        Text(
          context.locale!.cvHectoFinancial2,
        ),
        Text(
          context.locale!.cvHectoFinancial3,
        ),
        Text(
          context.locale!.cvHectoFinancial4,
        ),
      ],
    );
  }
}
