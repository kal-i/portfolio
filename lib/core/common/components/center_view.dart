import 'package:flutter/material.dart';

class CenterView extends StatelessWidget {
  const CenterView({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200.0),
        child: child,
      ),
    );
  }
}
