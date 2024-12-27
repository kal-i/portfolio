import 'package:flutter/material.dart';
import 'package:portfolio/core/common/components/url_icon_button.dart';
import 'package:portfolio/core/constants/assets_path.dart';

class EmailUrlIconButton extends StatelessWidget {
  const EmailUrlIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return UrlIconButton(
      onTap: () async {},
      iconPath: SvgIconPath.gmail,
      url: '', // Uri(
       // scheme: 'mailto',
       // path: 'paul.maceres00@gmail.com',
      //  query:
      //),
    );
  }
}
