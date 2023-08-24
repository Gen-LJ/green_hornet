

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:green_hornet/ui/screen/announcement_screen/pdf_view_screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


import '../../../utils/colors.dart';

class ChatScreen extends StatefulWidget {
   ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

 String file = 'assets_file/Bilingual-Childrens-Mother-Tongue.pdf';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is chat screen'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor,
      ),
       body: Center (
        child: TextButton(
          onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=> PdfViewScreen(file: file,)));
          },
          child: Text(file),
        )
    )
    );
  }
}
