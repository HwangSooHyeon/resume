import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/core/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/provider/app_localizations_state_provider.dart';
import 'package:resume/core/provider/theme_mode_state_provider.dart';
import 'package:resume/presentation/core/widgets/custom_animated_ink_well.dart';
import 'package:resume/core/util/url_utils.dart';

enum AppBarEnum {
  sourceCode,
  themeMode,
  locale,
  mailing;

  Widget widget(BuildContext context) => Consumer(builder: (context, ref, _) {
        final themeMode = ref.watch(themeModeStateProvider.notifier);
        final locale = ref.watch(appLocalizationsStateProvider.notifier);
        return _renderWidget(
          context,
          onTap: switch (this) {
            AppBarEnum.sourceCode => () => UrlUtils.launchUrlOrCatch(
                  'https://github.com/HwangSooHyeon/resume',
                ),
            AppBarEnum.themeMode => () {
                themeMode.toggleThemeMode(context);
              },
            AppBarEnum.locale => () {
                locale.toggleLocale(context);
              },
            AppBarEnum.mailing => () => UrlUtils.launchEmailOrCatch(
                  email: 'mikaelh1651@gmail.com',
                ),
          },
          child: switch (this) {
            AppBarEnum.sourceCode => Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'Source Code',
                  style: context.textTheme.titleSmall!.copyWith(
                    color: context.colorScheme.onPrimary,
                  ),
                ),
              ),
            AppBarEnum.themeMode => Text(
                'Theme | ${context.theme.brightness.name.toUpperCase()}',
                style: context.textTheme.titleSmall,
              ),
            AppBarEnum.locale => Text(
                'Lang | ${switch (AppLocalizations.of(context)?.localeName) {
                  'ko' => 'KOR',
                  'en' => 'ENG',
                  _ => 'KOR',
                }}',
                style: context.textTheme.titleSmall,
              ),
            AppBarEnum.mailing => const Icon(Icons.mail),
          },
        );
      });

  Widget _renderWidget(
    BuildContext context, {
    required Widget child,
    required VoidCallback onTap,
  }) {
    return CustomAnimatedInkWell(
      onTap: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      borderRadius: BorderRadius.circular(4),
      child: child,
    );
  }
}
