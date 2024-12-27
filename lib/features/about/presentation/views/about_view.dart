import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/core/constants/assets_path.dart';
import 'package:portfolio/features/about/presentation/components/tech_stack_container.dart';

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
          'About',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          '''
I am a fourth-year IT student at STI College Legazpi, passionate about building desktop and mobile applications.
\n\nMy development journey began in Senior High when our curriculum introduced me to Java. Java was the first programming language I learned, and I quickly fell in love with its OOP concepts, igniting my passion for software development. From there, I built console-based and GUI applications using Swing. But my pursuit for building a more modern and intuitive software has led me to my next language C#. 
\n\nWith C#, I gain a more in-depth understanding of OOP,  basic concepts of software design, and my first experience with relational databases. I applied these skills by developing a loan management system using C# and MS SQL Server as part of our curriculum. During this project, I learned about database normalization and frontend frameworks like Guna.
\n\nRecently, I’ve been exploring cross-platform development with Dart and Flutter for my capstone project. Flutter has expanded my skills in creating UI, handling navigation and state management, REST API integration with asynchronous programming and HTTP, and clean architecture.
\n\nOn the backend, I’ve been learning Dart and Dart Frog, which introduced me to  routes, middleware, basic and bearer authentication, and connecting client-side apps to backend services.
\n\nI am continuously learning to expand my knowledge of software development and stay relevant in the tech industry.
          ''',
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

        const techStack = [
          SvgIconPath.dart,
          SvgIconPath.cSharp,
          SvgIconPath.java,
          SvgIconPath.flutter,
          SvgIconPath.postgresql,
          SvgIconPath.mssqlserver,
          SvgIconPath.figma,
          SvgIconPath.git,
          SvgIconPath.github,
          SvgIconPath.postman,
        ];

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Technology',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'I am familiar with:',
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
