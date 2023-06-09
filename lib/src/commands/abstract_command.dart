import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/controllers/app_controller.dart';
import 'package:lukhu_assessment/src/controllers/auth_controller.dart';
import 'package:lukhu_assessment/src/services/login_service.dart';
import 'package:provider/provider.dart';

import '../globals.dart';

abstract class AbstractCommand {
  static BuildContext? _lastKnownRoot;

  late BuildContext context;

  NavigatorState? get rootNav => AppGlobals.nav;

  AbstractCommand(BuildContext c) {
    context = (c == _lastKnownRoot) ? c : Provider.of(c, listen: false);
    _lastKnownRoot = context;
  }

  Future execute();

  T getProvided<T>() => Provider.of<T>(context, listen: false);

  AppController get appController => getProvided<AppController>();

  AuthController get authController => getProvided<AuthController>();

  //Service
  LoginService get loginService => getProvided();
}

mixin CancellableCommandMixin on AbstractCommand {
  bool isCancelled = false;

  bool cancel() => isCancelled = true;
}
