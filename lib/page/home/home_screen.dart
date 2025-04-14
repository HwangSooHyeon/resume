import 'package:flutter/material.dart';
import 'package:resume/page/home/screen/home_fire_ant_screen.dart';
import 'package:resume/page/home/screen/home_investar_back_office_screen.dart';
import 'package:resume/page/home/screen/home_investar_screen.dart';
import 'package:resume/page/home/screen/home_main_screen.dart';
import 'package:resume/page/home/screen/home_sbl_screen.dart';
import 'package:resume/page/home/screen/home_sub_main_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String path = '/home';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        HomeMainScreen(),
        HomeSubMainScreen(),
        HomeInvestarScreen(),
        HomeInvestarBackOfficeScreen(),
        HomeSblScreen(),
        HomeFireAntScreen(),
      ],
    );
  }
}
