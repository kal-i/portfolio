import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/common/components/base_container.dart';

class TechStackContainer extends StatelessWidget {
  const TechStackContainer({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      width: 80.0,
      height: 80.0,
      child: SvgPicture.asset(
        path,
      ),
    );
  }
}
