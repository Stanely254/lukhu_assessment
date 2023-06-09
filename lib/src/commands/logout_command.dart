import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/_internal/common/short_message.dart';
import 'package:lukhu_assessment/src/commands/abstract_command.dart';
import 'package:lukhu_assessment/src/pages/welcome/welcome_page.dart';

class LogoutCommand extends AbstractCommand {
  LogoutCommand(super.c);

  @override
  Future<void> execute() async {
    ShortMessage.showMessage(
      message: "Goodbye ${authController.user.username}",
    );
    Future.delayed(const Duration(milliseconds: 400));
    authController.reset();
    rootNav!.pushReplacement(
        MaterialPageRoute(builder: (_) => const WelcomePage()));
  }
}
