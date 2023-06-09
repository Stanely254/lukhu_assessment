import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    required this.image,
    required this.label,
    this.isActive = false,
  });
  final String image;
  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          // ignore: deprecated_member_use
          color: _iconColor,
          height: 30,
          width: 30,
        ),
        Text(
          label,
          style: TextStyle(
            color: _iconColor,
            fontWeight: isActive ? FontWeight.w800 : FontWeight.w500,
          ),
        )
      ],
    );
  }

  Color get _iconColor =>
      isActive ? LukhuContants.lukhuColor : LukhuContants.navIconColor;
}
