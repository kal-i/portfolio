import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/features/projects/presentation/components/project_container.dart';

import '../../../../core/constants/projects.dart';

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
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            itemBuilder: (context, index) {
              final project = projects[index];
              return ProjectContainer(
                project: project,
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              height: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
