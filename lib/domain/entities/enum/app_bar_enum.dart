import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/core/util/extensions/build_context_extension.dart';
import 'package:resume/presentation/common/view_model/app_localizations_view_model.dart';
import 'package:resume/presentation/common/view_model/theme_mode_view_model.dart';
import 'package:resume/presentation/common/widgets/custom_animated_ink_well.dart';

enum AppBarEnum {
  themeMode,
  locale,
  mailing;

  Widget widget(BuildContext context) => Consumer(builder: (context, ref, _) {
        final themeMode = ref.watch(themeModeViewModelProvider.notifier);
        final locale = ref.watch(appLocalizationsViewModelProvider.notifier);
        return _renderWidget(
          context,
          onTap: switch (this) {
            AppBarEnum.themeMode => () {
                themeMode.toggleThemeMode(context);
              },
            AppBarEnum.locale => () {
                locale.toggleLocale(context);
              },
            AppBarEnum.mailing => () {},
          },
          child: switch (this) {
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
