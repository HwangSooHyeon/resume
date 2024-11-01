import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/page/home_screen.dart';
import 'package:resume/page/splash_page.dart';
import 'package:resume/widget/common/default_layout.dart';

class CustomRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (_, __) => const SplashScreen(),
      ),
      ShellRoute(
        parentNavigatorKey: _rootNavigatorKey,
        navigatorKey: _shellNavigatorKey,
        builder: (_, __, body) => DefaultLayout(body: body),
        routes: [
          GoRoute(
            path: '/home',
            builder: (_, __) => const HomeScreen(),
          ),
        ],
      ),
    ],
  );
}
