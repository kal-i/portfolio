import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/config/routes/app_routing_constants.dart';
import 'package:portfolio/features/about/presentation/views/about_view.dart';
import 'package:portfolio/features/contact/presentation/views/contact_view.dart';
import 'package:portfolio/features/home/presentation/views/home_view.dart';
import 'package:portfolio/features/projects/presentation/views/projects_view.dart';
import 'package:portfolio/portfolio.dart';

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
        name: RoutingConstants.portfolioViewRouteName,
        path: RoutingConstants.portfolioViewRoutePath,
        pageBuilder: (context, state) => const MaterialPage(
          child: Portfolio(),
        ),
      ),
    ],
  );
}
