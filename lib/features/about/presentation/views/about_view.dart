import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/features/about/data/about_data.dart';
import 'package:portfolio/features/about/presentation/components/tech_stack_container.dart';

import '../../data/tech_stack.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CenterView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _AboutMe(),
          SizedBox(
            height: 60.0,
          ),
          _MyTechStack(),
        ],
      ),
    );
  }
}

class _AboutMe extends StatelessWidget {
  const _AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          AboutData.aboutTitle,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          AboutData.aboutDescription,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}

class _MyTechStack extends StatelessWidget {
  const _MyTechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        const double itemSize = 80;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              AboutData.techTitle,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              AboutData.techDescription,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 20.0,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: itemSize, // Max width of each item
                mainAxisExtent: itemSize, // Fixed height of each item
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: techStack.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: itemSize,
                  height: itemSize,
                  child: TechStackContainer(
                    path: techStack[index],
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
