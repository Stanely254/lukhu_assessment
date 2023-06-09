import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/commands/abstract_command.dart';

import '../_internal/common/short_message.dart';
import '../pages/dashboard/dasboard.dart';

class BootstrapCommand extends AbstractCommand {
  BootstrapCommand(super.c);

  @override
  Future<void> execute() async {
    debugPrint("/##################################################");
    debugPrint("[Bootstrap command]");
    debugPrint("/##################################################");

    bool errorLoadingData = false;
    await authController.load().catchError((e, s) {
      debugPrint("[BootstrapCommand] Error loading AuthController: $s");
      errorLoadingData = true;
    });

    if (errorLoadingData) {
      authController.reset();
    }

    authController.load().then((value) {
      if (authController.user.id != null) {
        ShortMessage.showMessage(
          message: "Welcome ${authController.user.firstName}",
        );
        rootNav!.pushReplacement(
            MaterialPageRoute(builder: (_) => const Dashboard()));
      }
    });

    debugPrint("/##################################################");
    debugPrint("[Bootstrap command Complete]");
    debugPrint("/##################################################");
  }
}
