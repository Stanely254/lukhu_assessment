import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onTap, required this.label});
  final void Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        label,
        style: TextStyle(
          color: LukhuContants.linkBlue,
          fontWeight: FontWeight.w700,
          fontSize: 12,
          decoration: TextDecoration.underline,
          decorationColor: LukhuContants.linkBlue,
        ),
      ),
    );
  }
}
