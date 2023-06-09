import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.label,
    this.onTap,
    this.height = 40,
    this.width,
    this.color,
    this.disabledColor,
    this.radius = 0,
    this.assetIcon,
    this.textColor,
    this.borderColor,
    this.isLoading = false,
  });
  final String label;
  final void Function()? onTap;
  final double height;
  final double? width;
  final Color? color;
  final Color? disabledColor;
  final double radius;
  final String? assetIcon;
  final Color? textColor;
  final Color? borderColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final buttonColor = onTap == null ? disabledColor : color;
    return isLoading
        ? CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation(LukhuContants.linkBlue),
          ).center()
        : InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(radius),
            child: Container(
              width: width ?? context.widthPx,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(radius),
                  border: borderColor != null
                      ? Border.all(
                          color: borderColor!,
                          width: 2,
                        )
                      : null),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (assetIcon != null)
                    Image.asset(assetIcon!).padding(right: 10),
                  Text(
                    label,
                    style: TextStyle(
                      color: textColor ?? Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
