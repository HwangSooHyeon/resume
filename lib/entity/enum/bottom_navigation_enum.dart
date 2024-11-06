import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/page/config_screen.dart';
import 'package:resume/page/cover_letter_screen.dart';
import 'package:resume/page/cv_screen.dart';
import 'package:resume/page/home_screen.dart';
import 'package:resume/page/skills_screen.dart';
import 'package:resume/state/bottom_navigation_state.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/widget/common/custom_animated_ink_well.dart';

enum BottomNavigationEnum {
  home,
  coverLetter,
  skills,
  cv,
  config;

  String label(BuildContext context) => switch (this) {
        BottomNavigationEnum.home => context.locale!.home,
        BottomNavigationEnum.coverLetter => context.locale!.coverLetter,
        BottomNavigationEnum.skills => context.locale!.skills,
        BottomNavigationEnum.cv => context.locale!.cv,
        BottomNavigationEnum.config => context.locale!.config,
      };

  Widget icon({
    Color? color,
  }) =>
      _renderIconWidget(
        switch (this) {
          BottomNavigationEnum.home => Icons.home_rounded,
          BottomNavigationEnum.coverLetter => Icons.library_books_rounded,
          BottomNavigationEnum.skills => Icons.emoji_objects_rounded,
          BottomNavigationEnum.cv => Icons.apartment_rounded,
          BottomNavigationEnum.config => Icons.settings_rounded,
        },
        color: color,
      );

  String get path => switch (this) {
        BottomNavigationEnum.home => HomeScreen.path,
        BottomNavigationEnum.coverLetter => CoverLetterScreen.path,
        BottomNavigationEnum.skills => SkillsScreen.path,
        BottomNavigationEnum.cv => CvScreen.path,
        BottomNavigationEnum.config => ConfigScreen.path,
      };

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
