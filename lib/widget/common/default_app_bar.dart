import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/view_model/app_localizations_view_model.dart';
import 'package:resume/view_model/theme_mode_view_model.dart';
import 'package:resume/widget/common/custom_animated_ink_well.dart';

class DefaultAppBar extends ConsumerWidget {
  const DefaultAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeViewModelProvider.notifier);
    final locale = ref.watch(appLocalizationsViewModelProvider.notifier);
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
          CustomAnimatedInkWell(
            onTap: () {
              themeMode.toggleThemeMode(context);
            },
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            borderRadius: BorderRadius.circular(4),
            child: Text(
              'Theme | ${context.theme.brightness.name.toUpperCase()}',
              style: context.textTheme.titleSmall,
            ),
          ),
          CustomAnimatedInkWell(
            onTap: () {
              locale.toggleLocale(context);
            },
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            borderRadius: BorderRadius.circular(4),
            child: Text(
              'Lang | ${switch (AppLocalizations.of(context)?.localeName) {
                'ko' => 'KOR',
                'en' => 'ENG',
                _ => 'KOR',
              }}',
              style: context.textTheme.titleSmall,
            ),
          ),
          CustomAnimatedInkWell(
            onTap: () {},
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            borderRadius: BorderRadius.circular(4),
            child: Icon(Icons.mail),
          ),
        ],
      ),
    );
  }
}
