import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    this.isOnline = true,
    required this.image,
  });
  final bool isOnline;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: LukhuContants.lukhuColor,
          backgroundImage: NetworkImage(image),
          radius: 25,
        ),
        if (isOnline)
          Positioned(
            bottom: 1,
            right: 1,
            child: Container(
              height: 15,
              width: 15,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: LukhuContants.lukhuWhite,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundColor: LukhuContants.success,
              ),
            ),
          )
      ],
    );
  }
}
