import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({
    super.key,
    required this.data,
  });

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: data['color'],
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                data['image'],
                height: 16,
                width: 16,
              ),
              const Spacer(),
              Expanded(
                flex: 10,
                child: Text(
                  data['title'],
                  style: TextStyle(
                    color: LukhuContants.textDarkColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            data['description'],
            style: TextStyle(
              color: LukhuContants.textDarkColor,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
