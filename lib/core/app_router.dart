import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:tontine/app/cotisation/pages/cotisation_page.dart';
import 'package:tontine/app/inscription/pages/inscription_page.dart';
import 'package:tontine/app/pages/HomePage.dart';
import 'package:tontine/app/pages/WelcomePage.dart';
import 'package:tontine/app/pages/main_wrapper.dart';
import 'package:tontine/app/tontine/pages/tontine_page.dart';

class AppRouter {
  AppRouter._();

  static String initRoute = '/home';
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  static final _rootNavigatorTontine =
      GlobalKey<NavigatorState>(debugLabel: 'shellTontine');
  static final _rootNavigatorCotisation =
      GlobalKey<NavigatorState>(debugLabel: 'shellCotisation');
  static final _rootNavigatorInscription =
      GlobalKey<NavigatorState>(debugLabel: 'shellInscription');

  static final GoRouter router = GoRouter(
      initialLocation: initRoute,
      navigatorKey: _rootNavigatorKey,
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) {
              return MainWrapper(
                statefulNavigationShell: navigationShell,
              );
            },
            branches: <StatefulShellBranch>[
              StatefulShellBranch(navigatorKey: _rootNavigatorHome, routes: [
                GoRoute(
                    path: '/home',
                    name: 'Home',
                    builder: (context, state) {
                      return HomePage(
                        key: state.pageKey,
                      );
                    })
              ]),
              StatefulShellBranch(navigatorKey: _rootNavigatorTontine, routes: [
                GoRoute(
                    path: '/tontine',
                    name: 'Tontine',
                    builder: (context, state) {
                      return TontinePage(
                        key: state.pageKey,
                      );
                    })
              ]),
              StatefulShellBranch(
                  navigatorKey: _rootNavigatorCotisation,
                  routes: [
                    GoRoute(
                        path: '/cotisation',
                        name: 'Cotisation',
                        builder: (context, state) {
                          return CotisationPage(
                            key: state.pageKey,
                          );
                        })
                  ]),
              StatefulShellBranch(
                  navigatorKey: _rootNavigatorInscription,
                  routes: [
                    GoRoute(
                        path: '/inscription',
                        name: 'Inscription',
                        builder: (context, state) {
                          return InscriptionPage(
                            key: state.pageKey,
                          );
                        })
                  ]),
            ]),
      ]);
}
