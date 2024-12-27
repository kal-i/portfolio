import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/core/common/components/section_separator.dart';
import 'package:portfolio/features/about/presentation/views/about_view.dart';
import 'package:portfolio/features/contact/presentation/views/contact_view.dart';
import 'package:portfolio/features/footer/presentation/footer.dart';
import 'package:portfolio/features/home/presentation/views/home_view.dart';
import 'package:portfolio/features/navigation/views/navigation.dart';
import 'package:portfolio/features/projects/presentation/views/projects_view.dart';

import 'main.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final ScrollController _scrollController = ScrollController();

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Navigation(
                scrollToSection: scrollToSection,
                navigationItems: navigationItems,
              ),
              Expanded(
                child: CustomScrollView(
                  physics: const ClampingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: HomeView(
                        key: homeKey,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SectionSeparator(),
                    ),
                    SliverToBoxAdapter(
                      child: AboutView(
                        key: aboutKey,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SectionSeparator(),
                    ),
                    SliverToBoxAdapter(
                      child: ProjectsView(
                        key: projectsKey,
                        ),
                      ),
                    const SliverToBoxAdapter(
                      child: SectionSeparator(),
                    ),
                    SliverToBoxAdapter(
                      child: ContactView(
                        key: contactKey,
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Footer(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
