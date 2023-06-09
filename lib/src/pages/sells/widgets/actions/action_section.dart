import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/_internal/common/app_util.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/core.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    var actions = AppUtil.sellerViewAction;
    return Container(
      width: context.widthPx,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: List.generate(
          actions.length,
          (index) {
            var action = actions[index];
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  decoration: BoxDecoration(
                    color: action['color'],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        action['title'],
                        style: TextStyle(
                          color: LukhuContants.lukhuWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: LukhuContants.lukhuWhite,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          action['icon'],
                          color: action['color'],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
