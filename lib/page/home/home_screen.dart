import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/page/home/screen/home_fire_ant_screen.dart';
import 'package:resume/page/home/screen/home_investar_back_office_screen.dart';
import 'package:resume/page/home/screen/home_investar_screen.dart';
import 'package:resume/page/home/screen/home_main_screen.dart';
import 'package:resume/page/home/screen/home_sbl_screen.dart';
import 'package:resume/page/home/screen/home_sub_main_screen.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';
import 'package:resume/widget/common/custom_carousel.dart';

class HomeScreen extends StatefulWidget {
  static const String path = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        const HomeMainScreen(),
        const HomeSubMainScreen(),
        const HomeInvestarScreen(),
        const HomeInvestarBackOfficeScreen(),
        const HomeSblScreen(),
        const HomeFireAntScreen(),
      ],
    );
  }
}
