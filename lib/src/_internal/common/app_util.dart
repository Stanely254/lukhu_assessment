import 'package:flutter/material.dart';

class AppUtil {
  static List<Map<String, dynamic>> sellerStats = [
    {
      'title': 'Revenue',
      'description': 'KSh 21,000',
      'image': 'assets/icons/money.png',
      'color': const Color(0xffEDFFDF)
    },
    {
      'title': 'Orders',
      'description': '140',
      'image': 'assets/icons/box.png',
      'color': const Color(0xffF0EFFF)
    },
    {
      'title': 'Views',
      'description': '840',
      'image': 'assets/icons/chart_square.png',
      'color': const Color(0xffFCE7EE)
    },
  ];

  static List<Map<String, dynamic>> sellerViewAction = [
    {
      'title': 'Add New Sale',
      'route': 'add_sale',
      'icon': Icons.add,
      'color': const Color(0xff003CFF),
    },
    {
      'title': 'Your Wallet',
      'route': 'wallet',
      'icon': Icons.arrow_forward_ios,
      'color': const Color(0xff2F9803)
    }
  ];

  static List<Map<String, dynamic>> categories = [
    {
      'title': 'Products',
      'image': 'assets/icons/products.png',
      'color': const Color(0xffFCE7EE)
    },
    {
      'title': 'Orders',
      'image': 'assets/icons/orders.png',
      'color': const Color(0xffF0EFFF)
    },
    {
      'title': 'Customers',
      'image': 'assets/icons/user.png',
      'color': const Color(0xffFFEDEA)
    },
    {
      'title': 'Services',
      'image': 'assets/icons/services.png',
      'color': const Color(0xffEDECF0)
    },
  ];

  static List<Map<String, dynamic>> resources = [
    {
      'image':
          'https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZhc2hpb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      'title': 'Lukhu POS: Manage your biz even better on Lukhu',
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text."
    },
    {
      'image':
          'https://images.unsplash.com/photo-1495121605193-b116b5b9c5fe?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fGZhc2hpb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      'title': 'How to grow your Biz On Lukhu in 2023',
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text."
    },
    {
      'image':
          'https://images.unsplash.com/photo-1558769132-cb1aea458c5e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
      'title': 'How to make more sales during Lukhu campaigns',
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text."
    },
    {
      'image':
          'https://images.unsplash.com/photo-1601762603339-fd61e28b698a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fGZhc2hpb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      'title': 'Lukhu POS: Manage your biz even better on Lukhu',
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text."
    },
    {
      'image':
          'https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fGZhc2hpb258ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      'title': 'How to grow your Biz On Lukhu in 2023',
      'description':
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text."
    },
  ];
}
