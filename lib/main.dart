import 'package:flutter/material.dart';
import 'package:portfolio/config/routes/app_router.dart';
import 'package:portfolio/config/themes/app_theme.dart';

final GlobalKey homeKey = GlobalKey();
final GlobalKey aboutKey = GlobalKey();
final GlobalKey projectsKey = GlobalKey();
final GlobalKey contactKey = GlobalKey();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutingConfig.router,
    );
  }
}
