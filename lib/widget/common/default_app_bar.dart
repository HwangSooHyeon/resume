import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/model/enum/app_bar_enum.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/view_model/app_localizations_view_model.dart';
import 'package:resume/view_model/theme_mode_view_model.dart';
import 'package:resume/widget/common/custom_animated_ink_well.dart';

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
