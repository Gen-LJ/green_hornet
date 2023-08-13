import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class StoryScreen extends StatefulWidget {
  const StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Story screen'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor,
      ),
    );
  }
}
