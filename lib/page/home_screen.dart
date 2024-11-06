import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/l10n/gen_l10n/app_localizations.dart';
import 'package:resume/state/theme_mode_state.dart';
import 'package:resume/util/extension/build_context_extension.dart';

class HomeScreen extends ConsumerWidget {
  static const String path = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Current Language: ${AppLocalizations.of(context)?.language}',
          style: context.textTheme.headlineLarge,
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(themeModeStateProvider.notifier).toggleThemeMode(context);
          },
          child: Text('toggle theme mode'),
        ),
      ],
    );
  }
}
