import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/page/home_page.dart';
import 'package:resume/state/app_localizations_state.dart';
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
    return MaterialApp(
      title: 'Resume',
      theme: CustomTheme.themeData(),
      darkTheme: CustomTheme.themeData(isDark: true),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      locale: Locale(locale.localeName),
      home: const HomePage(),
    );
  }
}
