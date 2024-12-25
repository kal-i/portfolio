import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/base_container.dart';
import 'package:portfolio/features/projects/presentation/components/technology_chip.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    super.key,
    required this.title,
    required this.technology,
    required this.description,
  });

  final String title;
  final List<String> technology;
  final String description;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      height: 300.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 18.0,
                ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150.0,
                mainAxisExtent: 50.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
              ),
              itemCount: technology.length,
              itemBuilder: (context, index) {
                return TechnologyChip(
                  title: technology[index],
                );
              },
            ),
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
