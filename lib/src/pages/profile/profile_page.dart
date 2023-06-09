import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/commands/logout_command.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:lukhu_assessment/src/widgets/buttons/custom_button.dart';

import '../../constants/lukhu_constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    LogoutCommand logoutCommand = LogoutCommand(context);
    return Scaffold(
      body: SizedBox(
        height: context.heightPx,
        width: context.widthPx,
        child: CustomButton(
          onTap: () {
            logoutCommand.execute();
          },
          label: 'Log Out',
          color: LukhuContants.buttonBlue,
          radius: 8,
          height: 40,
          width: 100,
          textColor: LukhuContants.lukhuWhite,
        ).alignment(Alignment.center),
      ),
    );
  }
}
