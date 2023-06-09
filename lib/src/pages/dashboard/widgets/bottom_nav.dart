import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:lukhu_assessment/src/pages/dashboard/widgets/bottom_nav_icon.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    super.key,
    this.items = const [],
    this.index = 0,
    required this.onTap,
  });
  final List<Map<String, dynamic>> items;
  final int index;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    double size = max(context.widthPx, context.heightPx);
    return Container(
      height: size * .08,
      width: size,
      decoration: BoxDecoration(
        color: LukhuContants.lukhuWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(items.length, (i) {
          var item = items[i];
          return InkWell(
            onTap: () => onTap(i),
            child: BottomNavIcon(
              image: item['image'],
              label: item['title'],
              isActive: index == i,
            ),
          );
        }),
      ),
    );
  }
}
