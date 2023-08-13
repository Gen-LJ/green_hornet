import 'package:flutter/material.dart';


import '../../../utils/colors.dart';

class ChatScreen extends StatefulWidget {
   ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is chat screen'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor,
      ),
    );;
  }
}
