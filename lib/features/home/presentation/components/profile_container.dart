import 'package:flutter/material.dart';

import '../../../../core/constants/assets_path.dart';
import '../../data/home_data.dart';

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
            HomeData.profileImage,
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
