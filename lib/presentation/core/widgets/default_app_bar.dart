import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:resume/domain/entities/enum/app_bar_enum.dart';
import 'package:resume/core/extensions/build_context_extension.dart';

class DefaultAppBar extends StatelessWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          Text(
            context.locale!.title,
            style: context.textTheme.titleSmall,
          ),
          const Gap(8),
          Text(
            context.locale!.myName,
            style: context.textTheme.titleMedium,
          ),
          const Spacer(),
          ...AppBarEnum.values.map(
            (element) => element.widget(context),
          ),
        ],
      ),
    );
  }
}
