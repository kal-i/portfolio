import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constants/assets_path.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0),
        child: Column(
          children: [
            const SizedBox(
              height: 80.0,
            ),
            Text(
              'Built with Flutter by John Paul Maceres',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 12.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SvgPicture.asset(
              SvgIconPath.flutterColored,
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
