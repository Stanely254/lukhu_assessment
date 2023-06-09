import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/core.dart';

base class ShortMessage {
  static void showMessage({
    required String message,
  }) {
    BuildContext? context = AppGlobals.rootNavKey.currentContext;
    if (context == null) return;
    var messanger = ScaffoldMessenger.of(context);
    messanger.clearSnackBars();
    var snackBar = SnackBar(
      content: Text(message),
    );

    messanger.showSnackBar(snackBar);
  }
}
