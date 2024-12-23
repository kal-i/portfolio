import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/config/routes/app_routing_constants.dart';
import 'package:portfolio/features/about/presentation/views/about_view.dart';
import 'package:portfolio/features/contact/presentation/views/contact_view.dart';
import 'package:portfolio/features/home/presentation/views/home_view.dart';
import 'package:portfolio/features/projects/presentation/views/projects_view.dart';

class AppRoutingConfig {
  static final _rootNavigationKey = GlobalKey<NavigatorState>(
    debugLabel: 'root',
  );

  static final router = GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigationKey,
    initialLocation: RoutingConstants.homeViewRoutePath,
    routes: [
      GoRoute(
        name: RoutingConstants.homeViewRouteName,
        path: RoutingConstants.homeViewRoutePath,
        pageBuilder: (context, state) => const MaterialPage(
          child: HomeView(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.aboutViewRouteName,
        path: RoutingConstants.aboutViewRoutePath,
        pageBuilder: (context, state) => const MaterialPage(
          child: AboutView(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.projectViewRouteName,
        path: RoutingConstants.projectViewRoutePath,
        pageBuilder: (context, state) => const MaterialPage(
          child: ProjectsView(),
        ),
      ),
      GoRoute(
        name: RoutingConstants.contactViewRouteName,
        path: RoutingConstants.contactViewRoutePath,
        pageBuilder: (context, state) => const MaterialPage(
          child: ContactView(),
        ),
      ),
    ],
  );
}
