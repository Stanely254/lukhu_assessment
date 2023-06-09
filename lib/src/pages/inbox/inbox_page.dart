import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/core.dart';

import '../../constants/lukhu_constants.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.heightPx,
        width: context.widthPx,
        child: Text(
          'Inbox',
          style: TextStyle(
            color: LukhuContants.textDarkColor,
            fontWeight: FontWeight.w600,
          ),
        ).alignment(Alignment.center),
      ),
    );
  }
}
