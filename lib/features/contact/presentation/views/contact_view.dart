import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/core/common/components/url_icon_button.dart';

import '../../data/social_links.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return CenterView(
      child: SizedBox(
        height: 600.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Have a project in mind?',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'Contact me through the following platforms:',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                socialLinks.length,
                    (index) {
                  final socialLink = socialLinks[index];
                  return Row(
                    children: [
                      UrlIconButton(
                        iconPath: socialLink.iconPath,
                        url: socialLink.url,
                      ),
                      if (index < socialLinks.length - 1)
                        const SizedBox(width: 20.0), // Space between buttons
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
