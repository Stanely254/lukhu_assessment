import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.heightPx,
        width: context.widthPx,
        child: Text(
          'Home',
          style: TextStyle(
            color: LukhuContants.textDarkColor,
            fontWeight: FontWeight.w600,
          ),
        ).alignment(Alignment.center),
      ),
    );
  }
}
