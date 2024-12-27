import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/features/projects/presentation/components/project_container.dart';

import '../../../../core/constants/assets_path.dart';
import '../../models/project.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Project> projects = [
      const Project(
        imagePath: PngImagePath.desktopDashboard,
        title: 'QR Code Inventory Management and Item Tracking System',
        technology: [
          'Dart',
          'Flutter',
          'Dart Frog',
          'BLoC',
          'PostgresSQL',
          'REST API',
        ],
        description: 'A desktop and mobile system for inventory management.',
      ),
      const Project(
        imagePath: PngImagePath.desktopDashboard,
        title: 'Loan Management System (LMS)',
        technology: ['C#', 'MS SQL Server', 'Guna'],
        description: 'A robust loan management system.',
      ),
    ];

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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              final project = projects[index];
              return ProjectContainer(
                path: project.imagePath,
                title: project.title,
                technology: project.technology,
                description: project.description,
              );
            },
          ),
        ],
      ),
    );
  }
}
