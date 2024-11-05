import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/entity/enum/bottom_navigation_enum.dart';
import 'package:resume/page/home_screen.dart';
import 'package:resume/page/splash_page.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_theme.dart';
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
        builder: (context, __, body) => DefaultLayout(
          body: body,
          bottomNavigationBar: Theme(
            data: CustomTheme.themeData(
              isDark: context.theme.brightness == Brightness.dark,
            ).copyWith(
              highlightColor: Colors.transparent,
              splashFactory: NoSplash.splashFactory,
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: BottomNavigationEnum.values
                  .map(
                    (element) => element.bottomNavigationBarItem(
                      context,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
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
