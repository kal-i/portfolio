import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Get in touch or collaborate with me?',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
