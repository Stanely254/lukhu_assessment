import 'package:flutter/material.dart';

class CustomSizedPreferredWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomSizedPreferredWidget(
      {super.key, this.child, required this.height});
  final Widget? child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: child,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
