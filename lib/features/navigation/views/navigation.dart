import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/config/sizing/breakpoints.dart';
import 'package:portfolio/core/constants/assets_path.dart';
import 'package:portfolio/features/navigation/components/desktop_navigation.dart';
import 'package:portfolio/features/navigation/components/mobile_navigation.dart';

import '../../../main.dart';

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

class NavigationItem {
  const NavigationItem({
    required this.title,
    required this.sectionKey,
  });

  final String title;
  final GlobalKey sectionKey;
}
