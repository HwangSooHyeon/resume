import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/functions/duration.dart';
import 'package:resume/presentation/core/view_model/app_localizations_view_model.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/core/widgets/fade_slide_widget.dart';
import 'package:resume/presentation/home/screens/home_screen.dart';
import 'package:resume/presentation/core/widgets/default_layout.dart';

class SplashScreen extends ConsumerStatefulWidget {
  static const String path = '/splash';
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  final splashCharactersKo = [
    '안',
    '녕',
    '하',
    '세',
    '요',
    '.',
  ];

  final splashCharactersEn = [
    'H',
    'e',
    'l',
    'l',
    'o',
    '.',
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 2000),
      () {
        if (mounted) {
          context.go(HomeScreen.path);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(
      appLocalizationsViewModelProvider,
    );
    return DefaultLayout(
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 4,
          children: (locale.localeName == 'ko'
                  ? splashCharactersKo
                  : splashCharactersEn)
              .mapIndexed(
                (i, e) => FadeSlideWidget(
                  delay: animationDelay(order: i),
                  child: CustomText.bold(
                    e,
                    fontSize: 48,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
