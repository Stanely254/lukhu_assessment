import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:lukhu_assessment/src/images.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: LukhuContants.lukhuWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(
              Images.shareIcon,
            ).padding(right: 4),
            Text(
              'Share Store',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: LukhuContants.grey80,
              ),
            )
          ],
        ),
      ),
    );
  }
}
