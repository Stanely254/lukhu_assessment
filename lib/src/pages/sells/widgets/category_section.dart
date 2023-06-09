import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/_internal/common/app_util.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    var categories = AppUtil.categories;
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: LukhuContants.lukhuWhite,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(categories.length, (index) {
            var data = categories[index];
            return Expanded(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: data['color'],
                      radius: 28,
                      child: Image.asset(
                        data['image'],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      data['title'],
                      style: TextStyle(
                        color: LukhuContants.textDarkColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
