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
    final screenWidth = MediaQuery.sizeOf(context).width;

    return screenWidth > BreakPoints.tablet
        ? const _DesktopHomeView()
        : const _MobileHomeView();
  }
}

class _DesktopHomeView extends StatelessWidget {
  const _DesktopHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: Stack(
        children: [
          /// Background
          Positioned.fill(
            child: SvgPicture.asset(
              alignment: Alignment.centerRight,
              SvgImagePath.techStacks,
            ),
          ),
      
          /// Main Content
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 600.0,
                  child: ProfileContainer(),
                ),
              ),
              const SizedBox(
                height: 20.0,
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
        ],
      ),
    );
  }
}

class _MobileHomeView extends StatelessWidget {
  const _MobileHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Background
        Positioned.fill(
          child: SvgPicture.asset(
            alignment: Alignment.centerRight,
            SvgImagePath.techStacks,
          ),
        ),

        /// Main Content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300.0,
              child: ProfileContainer(),
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
      ],
    );
  }
}
