import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/_internal/common/app_util.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';

import '../../../../widgets/buttons/custom_text_button.dart';
import 'resource_card.dart';

class ResourceSection extends StatelessWidget {
  const ResourceSection({super.key});

  @override
  Widget build(BuildContext context) {
    var resources = AppUtil.resources;
    return Container(
      padding: const EdgeInsets.only(
        top: 13,
      ),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: LukhuContants.lukhuWhite,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Resources 💡️',
                  style: TextStyle(
                    color: LukhuContants.textDarkColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                CustomTextButton(
                  label: 'See All',
                  onTap: () {},
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 16,
                ),
                ...List.generate(resources.length, (index) {
                  var resource = resources[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ResourceCard(
                      resource: resource,
                      onTap: () {},
                    ),
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
