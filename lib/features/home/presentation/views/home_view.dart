import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/core/common/components/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const NavBar(),
            CenterView(child: ,),
          ],
        ),
      ),
    );
  }
}
