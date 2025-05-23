import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/domain/entities/enum/bottom_navigation_bar_enum.dart';
import 'package:resume/presentation/home/screens/home_screen.dart';
import 'package:resume/presentation/splash/screens/splash_screen.dart';
import 'package:resume/presentation/core/widgets/default_app_bar.dart';
import 'package:resume/presentation/core/widgets/default_layout.dart';

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
          body: CustomScrollView(
            slivers: [
              const SliverAppBar(
                floating: true,
                pinned: true,
                title: DefaultAppBar(),
              ),
              SliverToBoxAdapter(
                child: body,
              ),
            ],
          ),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: BottomNavigationBarEnum.values
                .map(
                  (element) => element.bottomNavigationBarItem(
                    context,
                  ),
                )
                .toList(),
          ),
        ),
        routes: BottomNavigationBarEnum.values
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
