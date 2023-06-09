import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:provider/provider.dart';

import '../../../controllers/auth_controller.dart';
import 'share_button.dart';
import 'user_avatar.dart';

class SellerTitleSection extends StatelessWidget {
  const SellerTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = context.watch();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (authController.user.image != null)
          UserAvatar(
            isOnline: true,
            image: authController.user.image!,
          ).padding(right: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              authController.user.firstName ?? '',
              style: TextStyle(
                color: LukhuContants.textDarkColor,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            Text(
              'zenyeziko.lukhu.shop',
              style: TextStyle(
                color: LukhuContants.textDarkColor,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ).padding(bottom: 4),
            ShareButton(
              onTap: () {},
            ).width(90)
          ],
        ),
      ],
    );
  }
}
