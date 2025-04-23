import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/core/util/router/custom_router.dart';
import 'package:resume/core/theme/custom_theme.dart';
import 'package:resume/presentation/common/view_model/app_localizations_view_model.dart';
import 'package:resume/presentation/common/view_model/theme_mode_view_model.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocalizationsViewModelProvider);
    final themeMode = ref.watch(themeModeViewModelProvider);

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
