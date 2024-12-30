import 'package:flutter/material.dart';
import 'package:portfolio/config/sizing/breakpoints.dart';

import '../../../../core/models/navigation_item.dart';
import '../components/desktop_navigation.dart';
import '../components/mobile_navigation.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    super.key,
    required this.scrollToSection,
    required this.navigationItems,
  });

  final Function(GlobalKey) scrollToSection;
  final List<NavigationItem> navigationItems;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > BreakPoints.tablet;

    return isWide
        ? DesktopNavigation(
            scrollToSection: scrollToSection,
            navigationItems: navigationItems,
          )
        : MobileNavigation(
            scrollToSection: scrollToSection,
            navigationItems: navigationItems,
          );
  }
}
