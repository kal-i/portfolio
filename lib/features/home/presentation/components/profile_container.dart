import 'package:flutter/material.dart';

import '../../../../core/constants/assets_path.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(
            JpgImagePath.animatedProfile,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
