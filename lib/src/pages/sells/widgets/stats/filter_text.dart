import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';

class FilterText extends StatelessWidget {
  const FilterText({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_month,
          color: LukhuContants.textDarkColor,
        ).padding(right: 4),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: LukhuContants.textDarkColor,
          ),
        ),
      ],
    );
  }
}
