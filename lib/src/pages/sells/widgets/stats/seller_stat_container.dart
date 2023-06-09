import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/_internal/common/app_util.dart';
import 'package:lukhu_assessment/src/constants/lukhu_constants.dart';
import 'package:lukhu_assessment/src/controllers/app_controller.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:lukhu_assessment/src/pages/sells/widgets/stats/filter_text.dart';
import 'package:lukhu_assessment/src/widgets/custom_drop_down.dart';
import 'package:provider/provider.dart';

import 'stat_card.dart';

class SellerStatContainer extends StatelessWidget {
  const SellerStatContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var sellerStats = AppUtil.sellerStats;
    AppController appController = context.watch();
    return Container(
      height: 150,
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: context.widthPx,
      decoration: BoxDecoration(
        color: LukhuContants.lukhuWhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomDropdown(
                items: const ['This Week', 'Last Month', 'Next Month'],
                itemChild: (value) => FilterText(label: value),
                onChanged: (value) {
                  context.read<AppController>().selectedDuration = value ?? "";
                },
                hintWidget: FilterText(
                  label: appController.selectedDuration,
                ),
              ).height(35),
              const Spacer(),
              Text(
                "Export Report",
                style: TextStyle(
                  color: LukhuContants.linkBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ).padding(horizontal: 4, bottom: 7, top: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                sellerStats.length,
                (index) {
                  var data = sellerStats[index];
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: StatsCard(data: data),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
