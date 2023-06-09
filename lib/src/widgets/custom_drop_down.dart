import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';

import '../images.dart';

class CustomDropdown<T> extends StatelessWidget {
  const CustomDropdown({
    super.key,
    this.items = const [],
    this.hintWidget,
    this.isDense = false,
    this.isExpanded = false,
    required this.itemChild,
    this.color,
    this.onChanged,
    this.icon,
    this.radius = 6,
    this.onTap,
  });
  final List<T> items;
  final Widget Function(T) itemChild;
  final Widget? hintWidget;
  final bool isDense;
  final bool isExpanded;
  final Color? color;
  final void Function(T?)? onChanged;
  final Widget? icon;
  final double radius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: LukhuContants.boarderColor),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: DropdownButton<T>(
        underline: Container(),
        isExpanded: isExpanded,
        isDense: isDense,
        onChanged: onChanged,
        hint: hintWidget,
        onTap: onTap,
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        icon: icon ??
            Image.asset(
              Images.chevronDown,
            ),
        items: items
            .map<DropdownMenuItem<T>>((value) => DropdownMenuItem<T>(
                  value: value,
                  child: itemChild(value),
                ))
            .toList(),
      ),
    );
  }
}
