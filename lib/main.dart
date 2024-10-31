import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/state/app_localizations_state.dart';
import 'package:resume/state/theme_mode_state.dart';
import 'package:resume/util/router/custom_router.dart';
import 'package:resume/util/theme/custom_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocalizationsStateProvider);
    final themeMode = ref.watch(themeModeStateProvider);
    return MaterialApp.router(
      title: 'Resume',
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
