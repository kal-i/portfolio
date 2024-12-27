import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlIconButton extends StatelessWidget {
  const UrlIconButton({
    super.key,
    this.onTap,
    required this.iconPath,
    required this.url,
  });

  final VoidCallback? onTap;
  final String iconPath;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () async {
        if (await canLaunchUrl(Uri.parse(url))) {
          await launchUrl(Uri.parse(url));
        }
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: SvgPicture.asset(
          iconPath,
          height: 40.0,
        ),
      ),
    );
  }
}
