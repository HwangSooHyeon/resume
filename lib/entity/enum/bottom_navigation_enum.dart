import 'package:flutter/material.dart';

enum BottomNavigationEnum {
  home,
  selfIntroduction,
  techStack,
  portfolio,
  setting;

  String label(BuildContext context) => switch (this) {
    // TODO: Handle this case.
    BottomNavigationEnum.home => throw UnimplementedError(),
    // TODO: Handle this case.
    BottomNavigationEnum.selfIntroduction => throw UnimplementedError(),
    // TODO: Handle this case.
    BottomNavigationEnum.techStack => throw UnimplementedError(),
    // TODO: Handle this case.
    BottomNavigationEnum.portfolio => throw UnimplementedError(),
    // TODO: Handle this case.
    BottomNavigationEnum.setting => throw UnimplementedError(),
  };
}