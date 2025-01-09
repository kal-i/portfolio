import 'package:flutter/material.dart';

class SectionSeparator extends StatelessWidget {
  const SectionSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 120,
        ),
        Divider(),
        SizedBox(
          height: 120,
        ),
      ],
    );
  }
}
