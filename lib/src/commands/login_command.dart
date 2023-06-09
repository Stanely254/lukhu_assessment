import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/_internal/common/short_message.dart';
import 'package:lukhu_assessment/src/commands/abstract_command.dart';
import 'package:lukhu_assessment/src/data/user.dart';
import 'package:lukhu_assessment/src/pages/dashboard/dasboard.dart';
import 'package:lukhu_assessment/src/services/service_result.dart';

class LoginCommand extends AbstractCommand {
  LoginCommand(super.c);

  @override
  Future<void> execute() async {
    if (!appController.isOnline) {
      ShortMessage.showMessage(message: "Check your internet connection!");
      return;
    }
    var loginForm = authController.loginFormKey;
    debugPrint('[DATA] ${authController.loginData}');
    if (loginForm.currentState!.validate()) {
      authController.isLoading = true;
      ServiceResult<User?> result =
          await loginService.login(authController.loginData);
      debugPrint('[USER] ${result.response.body}${result.response.errorType}');
      authController.isLoading = false;
      var code = result.response.statusCode;
      if (code == 200) {
        authController.user = result.content!;
        authController.scheduleSave();
        ShortMessage.showMessage(
          message: "Welcome ${result.content!.firstName}",
        );
        rootNav!.pushReplacement(
            MaterialPageRoute(builder: (_) => const Dashboard()));
      } else {
        var data = jsonDecode(result.response.body!);

        ShortMessage.showMessage(message: data["message"]);
      }
    } else {
      authController.isLoading = false;
      ShortMessage.showMessage(message: "Provide all the required fields.");
    }
  }
}
