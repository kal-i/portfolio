import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/common/components/url_icon_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/core/common/components/center_view.dart';
import 'package:portfolio/core/constants/assets_path.dart';

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
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UrlIconButton(
                  iconPath: SvgIconPath.github,
                  url: 'https://github.com/kal-i',
                ),
                SizedBox(
                  width: 20.0,
                ),
                UrlIconButton(
                  iconPath: SvgIconPath.linkedin,
                  url: 'https://www.linkedin.com/in/john-paul-maceres/',
                ),
                SizedBox(
                  width: 20.0,
                ),
                UrlIconButton(
                  iconPath: SvgIconPath.facebook,
                  url: 'https://www.facebook.com/johnpaul.maceres.20020929',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
