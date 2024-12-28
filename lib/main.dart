import 'package:flutter/material.dart';
import 'package:portfolio/config/routes/app_router.dart';
import 'package:portfolio/config/sizing/breakpoints.dart';
import 'package:portfolio/config/themes/app_theme.dart';

import 'core/models/navigation_item.dart';
import 'features/navigation/views/navigation.dart';

final GlobalKey homeKey = GlobalKey();
final GlobalKey aboutKey = GlobalKey();
final GlobalKey projectsKey = GlobalKey();
final GlobalKey contactKey = GlobalKey();

final List<NavigationItem> navigationItems = [
  NavigationItem(title: 'About', sectionKey: aboutKey),
  NavigationItem(title: 'Projects', sectionKey: projectsKey),
  NavigationItem(title: 'Contact', sectionKey: contactKey),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final isDesktop = constraints.maxWidth > BreakPoints.tablet;

      return MaterialApp.router(
        theme: AppTheme.light.copyWith(
          textTheme:
              (isDesktop ? AppTheme.desktopTextTheme : AppTheme.mobileTextTheme)
                  .apply(
            fontFamily: 'Montserrat',
          ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: AppRoutingConfig.router,
      );
    });
  }
}
