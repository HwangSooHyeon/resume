import 'package:flutter/material.dart';
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

  Widget get icon => _renderIconWidget(
        switch (this) {
          BottomNavigationEnum.home => Icons.home_rounded,
          BottomNavigationEnum.coverLetter => Icons.library_books_rounded,
          BottomNavigationEnum.skills => Icons.emoji_objects_rounded,
          BottomNavigationEnum.cv => Icons.apartment_rounded,
          BottomNavigationEnum.config => Icons.settings_rounded,
        },
      );

  Widget bottomNavigationBarItem(BuildContext context) => CustomAnimatedInkWell(
        width: (context.width) / 5,
        height: 84,
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        borderRadius: BorderRadius.circular(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            Text(
              label(context),
              style: context.textTheme.labelSmall,
            ),
          ],
        ),
      );

  Widget _renderIconWidget(IconData icon) => Icon(
        icon,
        size: 34,
      );
}
