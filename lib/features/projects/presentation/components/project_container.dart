import 'package:flutter/material.dart';
import 'package:portfolio/config/sizing/breakpoints.dart';
import 'package:portfolio/core/common/components/base_container.dart';
import 'package:portfolio/features/home/presentation/components/image_container.dart';
import 'package:portfolio/features/projects/presentation/components/technology_chip.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    super.key,
    required this.path,
    required this.title,
    required this.technology,
    required this.description,
  });

  final String path;
  final String title;
  final List<String> technology;
  final String description;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isWide = screenWidth > BreakPoints.tablet;

    return BaseContainer(
      child: isWide
          ? SizedBox(
              height: 300.0,
              child: Row(
                children: [
                  Expanded(
                    child: ImageContainer(
                      path: path,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          title,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                    fontSize: 18.0,
                                  ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Wrap(
                          spacing: 10.0, // Horizontal spacing
                          runSpacing: 10.0, // Vertical spacing
                          children: technology
                              .map((tech) => TechnologyChip(title: tech))
                              .toList(),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          description,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 300.0,
                  child: ImageContainer(
                    path: path,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 18.0,
                      ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Wrap(
                  spacing: 10.0, // Horizontal spacing
                  runSpacing: 10.0, // Vertical spacing
                  children: technology
                      .map((tech) => TechnologyChip(title: tech))
                      .toList(),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
    );
  }
}
