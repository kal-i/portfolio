import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/config/themes/app_color.dart';

import '../../../../core/constants/assets_path.dart';
import '../../../../core/models/navigation_item.dart';

class DesktopNavigation extends StatelessWidget {
  const DesktopNavigation({
    super.key,
    required this.scrollToSection,
    required this.navigationItems,
  });

  final Function(GlobalKey) scrollToSection;
  final List<NavigationItem> navigationItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 20.0,
      ),
      height: 115.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            SvgImagePath.personalBrand,
            semanticsLabel: 'Personal Brand',
          ),
          Row(
            children: navigationItems
                .map((item) => Padding(
              padding: const EdgeInsets.only(left: 60.0),
              child: NavBarItem(
                title: item.title,
                onTap: () => scrollToSection(item.sectionKey),
              ),
            ))
                .toList(),
          ),
        ],
      ),
    );
  }
}


class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: Theme.of(context).textTheme.bodyLarge?.color,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
