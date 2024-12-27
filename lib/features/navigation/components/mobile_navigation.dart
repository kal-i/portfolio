import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/constants/assets_path.dart';

import '../views/navigation.dart';
import 'desktop_navigation.dart';

class MobileNavigation extends StatefulWidget {
  const MobileNavigation({
    super.key,
    required this.scrollToSection,
    required this.navigationItems,
  });

  final Function(GlobalKey) scrollToSection;
  final List<NavigationItem> navigationItems;

  @override
  _MobileNavigationState createState() => _MobileNavigationState();
}

class _MobileNavigationState extends State<MobileNavigation> {
  bool _isMenuOpen = false;

  void _toggleMenu() {
    setState(() {
      _isMenuOpen = !_isMenuOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SvgPicture.asset(
            SvgImagePath.personalBrand,
            height: 60.0,
          ),
        ),

        // The burger icon
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: SvgPicture.asset(
              _isMenuOpen ? SvgIconPath.close : SvgIconPath.hamburger,
              height: 40.0,
            ),
            onPressed: _toggleMenu,
          ),
        ),

        // The menu overlay
        if (_isMenuOpen)
          Positioned.fill(
            child: GestureDetector(
              onTap: _toggleMenu, // Close menu when tapping outside
              child: Container(
                color: Colors.black.withOpacity(0.5), // Semi-transparent background
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.navigationItems.map(
                        (item) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                         child: NavBarItem(
                          title: item.title,
                          onTap: () {
                            _toggleMenu(); // Close the menu
                            widget.scrollToSection(item.sectionKey); // Navigate
                          },
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
