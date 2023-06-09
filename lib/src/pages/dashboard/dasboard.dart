import 'package:flutter/material.dart';
import 'package:lukhu_assessment/src/core.dart';
import 'package:lukhu_assessment/src/pages/dashboard/widgets/bottom_nav.dart';
import 'package:lukhu_assessment/src/pages/home/home_page.dart';
import 'package:lukhu_assessment/src/pages/inbox/inbox_page.dart';
import 'package:lukhu_assessment/src/pages/profile/profile_page.dart';
import 'package:lukhu_assessment/src/pages/search/search_page.dart';
import 'package:lukhu_assessment/src/pages/sells/seller_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final pageController = PageController();
  List<Map<String, dynamic>> navOptions = [
    {
      'title': 'Home',
      'image': 'assets/svg/home_icon.svg',
    },
    {
      'title': 'Search',
      'image': 'assets/svg/search_icon.svg',
    },
    {
      'title': 'Sell',
      'image': 'assets/svg/sell_icon.svg',
    },
    {
      'title': 'Sell',
      'image': 'assets/svg/inbox_icon.svg',
    },
    {
      'title': 'Account',
      'image': 'assets/svg/account_icon.svg',
    },
  ];

  int _selectedIndex = 0;

  void _setPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(
      index,
    );
  }

  List<Widget> get _views => [
        const HomePage(),
        const SearchPage(),
        const SellerPage(),
        const InboxPage(),
        const ProfilePage()
      ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _setPage(2);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.heightPx,
        width: context.widthPx,
        child: PageView.builder(
          itemCount: _views.length,
          itemBuilder: (context, index) => _views[index],
          controller: pageController,
          onPageChanged: (index) => _setPage(index),
        ),
      ),
      bottomNavigationBar: BottomNavbar(
        items: navOptions,
        index: _selectedIndex,
        onTap: (index) => _setPage(index),
      ),
    );
  }
}
