import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class LeaveRequestScreen extends StatefulWidget {
  const LeaveRequestScreen({super.key});

  @override
  State<LeaveRequestScreen> createState() => _LeaveRequestScreenState();
}

class _LeaveRequestScreenState extends State<LeaveRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Leave Request screen'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor,
      ),
    );
  }
}
