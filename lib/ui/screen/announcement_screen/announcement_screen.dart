

import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class AnnouncementScreen extends StatefulWidget {
   AnnouncementScreen({super.key});

  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is announcement screen'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor,
      ),
    );
  }
}
