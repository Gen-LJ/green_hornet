import 'package:flutter/material.dart';


import '../../../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Dashboard Manager screen'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor
    ));
  }
}
