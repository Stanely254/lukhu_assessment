import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:lukhu_assessment/src/images.dart';
import 'package:lukhu_assessment/src/pages/sells/widgets/actions/action_section.dart';
import 'package:lukhu_assessment/src/pages/sells/widgets/seller_title.dart';
import 'package:lukhu_assessment/src/widgets/buttons/custom_icon_button.dart';

import '../../constants/lukhu_constants.dart';
import 'widgets/category_section.dart';
import 'widgets/resource/resource_section.dart';
import 'widgets/stats/seller_stat_container.dart';

class SellerPage extends StatelessWidget {
  const SellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          backgroundColor: LukhuContants.backgoundBlue,
          automaticallyImplyLeading: false,
          titleSpacing: 12,
          title: const SellerTitleSection().padding(top: 5),
          actions: [
            CustomIconButton(
              image: Images.callIcon,
              onTap: () {},
              backgroundColor: LukhuContants.backgoundBlue,
            ),
            CustomIconButton(
              backgroundColor: LukhuContants.backgoundBlue,
              image: Images.notification,
              onTap: () {},
            ).padding(right: 16),
          ],
        ),
      ),
      body: SizedBox(
        height: context.heightPx,
        width: context.widthPx,
        child: ListView.builder(
          itemCount: _views.length,
          itemBuilder: (context, index) => _views[index],
        ),
      ),
    );
  }

  List<Widget> get _views => const [
        SellerStatContainer(),
        ActionSection(),
        CategorySection(),
        ResourceSection(),
      ];
}
