import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/features/projects/presentation/components/project_container.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Projects',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            'I have developed:',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const ProjectContainer(
            title: 'QR Code Inventory Management and Item Tracking System',
            technology: [
              'Dart',
              'Flutter',
              'Dart Frog',
              'BLoC',
              'PostgresSQL',
              'REST API',
            ],
            description:
                'The QR Code Inventory Management and Item Tracking System is comprised of two systems: a desktop and mobile applications.',
          ),
        ],
      ),
    );
  }
}
