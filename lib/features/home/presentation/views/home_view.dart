import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/features/home/data/home_data.dart';
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
                    HomeData.buildingBlocksImage,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            HomeData.introductionTitle,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  height: 1.3,
                ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            HomeData.introductionDescription,
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
                  top: 100.0,
                  right: 10.0,
                  child: SizedBox(
                    height: 200.0,
                    width: 200.0,
                    child: SvgPicture.asset(
                      HomeData.buildingBlocksImage,
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
            HomeData.introductionTitle,
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  height: 1.3,
                ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            HomeData.introductionDescription,
            style: Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
