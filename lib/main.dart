import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/view_model/app_localizations_view_model.dart';
import 'package:resume/view_model/theme_mode_view_model.dart';
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
    final locale = ref.watch(appLocalizationsViewModelProvider);
    final themeMode = ref.watch(themeModeViewModelProvider);

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
