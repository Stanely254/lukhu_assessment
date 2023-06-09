import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/images.dart';

/// The LukhuIcon class is a stateless widget that returns an image asset of the Lukhu icon.
class LukhuIcon extends StatelessWidget {
  const LukhuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Images.lukhuIconImage);
  }
}
