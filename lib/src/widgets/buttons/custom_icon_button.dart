import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.image,
    this.onTap,
    this.backgroundColor,
    this.radius,
  });
  final String image;
  final void Function()? onTap;
  final Color? backgroundColor;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius,
      child: InkWell(
        onTap: onTap,
        child: Image.asset(image),
      ),
    );
  }
}
