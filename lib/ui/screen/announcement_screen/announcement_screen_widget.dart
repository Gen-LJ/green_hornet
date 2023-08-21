import 'package:flutter/material.dart';
import 'package:green_hornet/utils/colors.dart';

class AnnouncementScreenWidget extends StatefulWidget {
  const AnnouncementScreenWidget({super.key});

  @override
  State<AnnouncementScreenWidget> createState() => _AnnouncementScreenWidgetState();
}

class _AnnouncementScreenWidgetState extends State<AnnouncementScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Announcement Screen'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor,
      ),
    );
  }
}
