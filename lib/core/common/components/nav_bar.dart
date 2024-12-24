import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/constants/assets_path.dart';

import '../../../main.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.scrollToSection,
  });

  final Function(GlobalKey) scrollToSection;

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
            children: [
              _NavBarItem(
                title: 'About',
                scrollToSection: scrollToSection,
              ),
              const SizedBox(
                width: 60.0,
              ),
              _NavBarItem(
                title: 'Projects',
                scrollToSection: scrollToSection,
              ),
              const SizedBox(
                width: 60.0,
              ),
              _NavBarItem(
                title: 'Contact',
                scrollToSection: scrollToSection,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({
    super.key,
    required this.title,
    required this.scrollToSection,
  });

  final String title;
  final Function(GlobalKey) scrollToSection;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Call the scrollToSection function with the appropriate key for each section
        switch (title) {
          case 'About':
            scrollToSection(aboutKey);
            break;
          case 'Projects':
            scrollToSection(projectsKey);
            break;
          case 'Contact':
            scrollToSection(contactKey);
            break;
          default:
            scrollToSection(homeKey);
            break;
        }
      },
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
