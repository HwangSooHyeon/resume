import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/presentation/home/screens/home_fire_ant_screen.dart';
import 'package:resume/presentation/home/screens/home_investar_back_office_screen.dart';
import 'package:resume/presentation/home/screens/home_investar_screen.dart';
import 'package:resume/presentation/home/screens/home_main_screen.dart';
import 'package:resume/presentation/home/screens/home_sbl_screen.dart';
import 'package:resume/presentation/home/screens/home_sub_main_screen.dart';
import 'package:resume/presentation/home/view_models/home_view_model.dart';

class HomeScreen extends ConsumerWidget {
  static const String path = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeState = ref.watch(homeViewModelProvider);
    final content = homeState.content;

    return Wrap(
      children: [
        HomeMainScreen(
          title1: content.title1,
          title2: content.title2,
        ),
        HomeSubMainScreen(
          title3: content.title3,
          title4: content.title4,
          title5: content.title5,
        ),
        HomeInvestarScreen(
          investarContent: content.investarContent,
        ),
        HomeInvestarBackOfficeScreen(
          investarBackOfficeContent: content.investarBackOfficeContent,
        ),
        HomeSblScreen(
          sblContent: content.sblContent,
        ),
        HomeFireAntScreen(
          fireAntContent: content.fireAntContent,
        ),
      ],
    );
  }
}
