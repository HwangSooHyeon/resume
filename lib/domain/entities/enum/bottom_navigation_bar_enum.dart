import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/presentation/config/screens/config_screen.dart';
import 'package:resume/presentation/cover-letter/screens/cover_letter_screen.dart';
import 'package:resume/presentation/cv/screens/cv_screen.dart';
import 'package:resume/presentation/home/screens/home_screen.dart';
import 'package:resume/presentation/skills/screens/skills_screen.dart';
import 'package:resume/core/provider/bottom_navigation_state_provider.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/presentation/core/widgets/custom_animated_ink_well.dart';

enum BottomNavigationBarEnum {
  home,
  coverLetter,
  skills,
  cv,
  config;

  String get path => switch (this) {
        BottomNavigationBarEnum.home => HomeScreen.path,
        BottomNavigationBarEnum.coverLetter => CoverLetterScreen.path,
        BottomNavigationBarEnum.skills => SkillsScreen.path,
        BottomNavigationBarEnum.cv => CvScreen.path,
        BottomNavigationBarEnum.config => ConfigScreen.path,
      };

  Widget get screen => switch (this) {
        BottomNavigationBarEnum.home => const HomeScreen(),
        BottomNavigationBarEnum.coverLetter => const CoverLetterScreen(),
        BottomNavigationBarEnum.skills => const SkillsScreen(),
        BottomNavigationBarEnum.cv => const CvScreen(),
        BottomNavigationBarEnum.config => const ConfigScreen(),
      };

  String label(BuildContext context) => switch (this) {
        BottomNavigationBarEnum.home => context.locale!.home,
        BottomNavigationBarEnum.coverLetter => context.locale!.coverLetter,
        BottomNavigationBarEnum.skills => context.locale!.skills,
        BottomNavigationBarEnum.cv => context.locale!.cv,
        BottomNavigationBarEnum.config => context.locale!.config,
      };

  Widget icon({
    Color? color,
  }) =>
      _renderIconWidget(
        switch (this) {
          BottomNavigationBarEnum.home => Icons.home_rounded,
          BottomNavigationBarEnum.coverLetter => Icons.library_books_rounded,
          BottomNavigationBarEnum.skills => Icons.emoji_objects_rounded,
          BottomNavigationBarEnum.cv => Icons.apartment_rounded,
          BottomNavigationBarEnum.config => Icons.settings_rounded,
        },
        color: color,
      );

  Widget bottomNavigationBarItem(BuildContext context) => Consumer(
        builder: (context, ref, _) {
          final bottomNavigationState =
              ref.watch(bottomNavigationStateProvider);
          return CustomAnimatedInkWell(
            width: (context.width) / 5,
            height: 84,
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              ref.read(bottomNavigationStateProvider.notifier).update(
                    bottomNavigationEnum: this,
                  );
              context.go(path);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon(
                  color: bottomNavigationState == this
                      ? context.colorScheme.primary
                      : null,
                ),
                const Gap(4),
                Text(
                  label(context),
                  style: context.textTheme.labelSmall!.copyWith(
                    color: bottomNavigationState == this
                        ? context.colorScheme.primary
                        : null,
                  ),
                ),
              ],
            ),
          );
        },
      );

  Widget _renderIconWidget(
    IconData icon, {
    Color? color,
  }) =>
      Icon(
        icon,
        size: 34,
        color: color,
      );
}
