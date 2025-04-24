import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/core/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/core/router/custom_router.dart';
import 'package:resume/core/theme/custom_theme.dart';
import 'package:resume/core/provider/app_localizations_state_provider.dart';
import 'package:resume/core/provider/theme_mode_state_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocalizationsStateProvider);
    final themeMode = ref.watch(themeModeStateProvider);

    return MaterialApp.router(
      title: locale.localeName == 'ko'
          ? '황수현 - 플러터 개발자'
          : 'Soohyeon Hwang - Flutter Developer',
      theme: CustomTheme.themeData(),
      darkTheme: CustomTheme.themeData(isDark: true),
      themeMode: themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: Locale(locale.localeName),
      routerConfig: CustomRouter.router,
    );
  }
}
