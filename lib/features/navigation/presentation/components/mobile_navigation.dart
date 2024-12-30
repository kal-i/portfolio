import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/constants/assets_path.dart';

import '../../../../core/constants/navigation_items.dart';
import '../../../../core/models/navigation_item.dart';
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
  State<MobileNavigation> createState() => _MobileNavigationState();
}

class _MobileNavigationState extends State<MobileNavigation>
    with SingleTickerProviderStateMixin {
  late final _menuController = AnimationController(
    vsync: this,
    duration: const Duration(
      milliseconds: 150,
    ),
  );
  final ValueNotifier<bool> _isMenuOpen = ValueNotifier(false);

  void _toggleMenu() {
    if (_menuController.isCompleted) {
      _menuController.reverse();
    } else {
      _menuController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _menuController,
      builder: (context, _) {
        final height = 64 + _menuController.value * (56 * 4 + 64);

        return SizedBox(
          height: height,
          child: Column(
            children: [
              SizedBox(
                height: 64.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      SvgImagePath.personalBrand,
                      semanticsLabel: 'Personal Brand',
                    ),
                    GestureDetector(
                      onTap: _toggleMenu,
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        size: 30.0,
                        progress: _menuController,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: navigationItems.length,
                  itemBuilder: (context, index) => NavBarItem(
                    title: navigationItems[index].title,
                    onTap:() => widget
                        .scrollToSection(navigationItems[index].sectionKey),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
