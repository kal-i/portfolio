import 'package:flutter/material.dart';
import 'package:portfolio/config/themes/app_color.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
  });

  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: AppColor.outline,
        // ),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFE3E8FF),
            blurRadius: 4.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
        color: Color(0xFFF6F7FF),
      ),
      child: child,
    );
  }
}
