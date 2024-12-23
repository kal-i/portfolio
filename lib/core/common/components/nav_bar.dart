import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/constants/assets_path.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            SvgImagePath.personalBrand,
            semanticsLabel: 'Personal Brand',
          ),
          const Row(
            children: [
              _NavBarItem(
                title: 'About',
              ),
              SizedBox(
                width: 60.0,
              ),
              _NavBarItem(
                title: 'Projects',
              ),
              SizedBox(
                width: 60.0,
              ),
              _NavBarItem(
                title: 'Contact',
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
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
