import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/features/home/presentation/components/profile_container.dart';

import '../../../../config/sizing/breakpoints.dart';
import '../../../../core/constants/assets_path.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > BreakPoints.tablet;

    return isWide ? const _DesktopHomeView() : const _MobileHomeView();
  }
}

class _DesktopHomeView extends StatelessWidget {
  const _DesktopHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 600.0,
            child: Row(
              children: [
                const Expanded(
                  child: ProfileContainer(),
                ),
                const SizedBox(
                  width: 60.0,
                ),
                Expanded(
                  child: SvgPicture.asset(
                    SvgImagePath.buildingBlocks,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            'Hi! I\'m John Paul Maceres,\nAn Aspiring Software Developer',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  height: 1.3,
                ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'An aspirant who embraces simplicity and minimalism, passionate about building desktop and mobile applications.',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}

class _MobileHomeView extends StatelessWidget {
  const _MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 600.0,
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: ProfileContainer(),
                ),
                Positioned(
                  top: 100.0, // Adjust to control vertical overlap
                  right: 10.0, // Adjust to control horizontal overlap
                  child: SizedBox(
                    height: 200.0, // Adjust size if needed
                    width: 200.0,
                    child: SvgPicture.asset(
                      SvgImagePath.buildingBlocks,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 0.0,
          ),
          Text(
            'Hi! I\'m John Paul Maceres,\nAn Aspiring Software Developer',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'An aspirant who embraces simplicity and minimalism, passionate about building desktop and mobile applications.',
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
