import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/page/home/home_screen.dart';
import 'package:resume/widget/common/default_layout.dart';

class SplashScreen extends StatefulWidget {
  static const String path = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 1),
      () {
        if (mounted) {
          context.go(HomeScreen.path);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      body: Center(
        child: Text('Splash Page'),
      ),
    );
  }
}
