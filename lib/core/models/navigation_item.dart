import 'package:flutter/widgets.dart';

class NavigationItem {
  const NavigationItem({
    required this.title,
    required this.sectionKey,
  });

  final String title;
  final GlobalKey sectionKey;
}
