import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/entity/enum/bottom_navigation_enum.dart';
import 'package:resume/page/home_screen.dart';
import 'package:resume/page/splash_page.dart';
import 'package:resume/widget/common/default_layout.dart';

class CustomRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static bool _needRefresh = true;

  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: SplashScreen.path,
    routes: [
      GoRoute(
        path: SplashScreen.path,
        builder: (_, __) => const SplashScreen(),
      ),
      ShellRoute(
        parentNavigatorKey: _rootNavigatorKey,
        navigatorKey: _shellNavigatorKey,
        redirect: (_, state) {
          // start from splash screen if the app restart
          if (state.uri.toString() == HomeScreen.path) {
            _needRefresh = false;
            return HomeScreen.path;
          }
          if (_needRefresh) {
            _needRefresh = false;
            return SplashScreen.path;
          }
          return null;
        },
        builder: (context, __, body) => DefaultLayout(
          body: body,
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: BottomNavigationEnum.values
                .map(
                  (element) => element.bottomNavigationBarItem(
                    context,
                  ),
                )
                .toList(),
          ),
        ),
        routes: BottomNavigationEnum.values
            .map(
              (element) => GoRoute(
                path: element.path,
                builder: (_, __) => element.screen,
              ),
            )
            .toList(),
      ),
    ],
  );
}
