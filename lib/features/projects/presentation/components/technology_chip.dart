import 'package:flutter/material.dart';
import 'package:portfolio/config/themes/app_color.dart';

class TechnologyChip extends StatelessWidget {
  const TechnologyChip({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.0),
          color: AppColor.background),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: AppColor.chipText,
          fontSize: 12.0,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
