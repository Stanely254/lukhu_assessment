import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/_internal/common/http_client.dart';
import 'package:lukhu_assessment/src/commands/abstract_command.dart';

class CheckConnectionCommand extends AbstractCommand
    with CancellableCommandMixin {
  CheckConnectionCommand(super.c);

  @override
  Future<void> execute([
    bool repeat = false,
    int wait = 3,
  ]) async {
    String url = "https://google.com";
    appController.isOnline = (await HttpClient.head(url)).success;
    debugPrint('[ONLINE] ${appController.isOnline}');
    if (repeat) {
      Future.delayed(Duration(seconds: wait)).then((value) {
        if (isCancelled) return;
        execute(true);
      });
    }
  }
}
