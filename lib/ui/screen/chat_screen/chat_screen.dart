

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_hornet/ui/widget/icon_and_image.dart';
import 'package:green_hornet/ui/widget/pdf_view_screen.dart';
import 'package:green_hornet/utils/images.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


import '../../../utils/colors.dart';

class ChatScreen extends StatefulWidget {
   const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

 String file = 'assets_file/Bilingual-Childrens-Mother-Tongue.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is chat screen'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor,
        
      ),
    );
  }
}
