import 'package:flutter/material.dart';
import 'package:green_hornet/utils/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewScreen extends StatefulWidget {
  final file;
  const PdfViewScreen({super.key, this.file});

  @override
  State<PdfViewScreen> createState() => _PdfViewScreenState();
}

class _PdfViewScreenState extends State<PdfViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.file),
          backgroundColor: AppColor.themeGreenColor,
        ),

        body: SfPdfViewer.asset(widget.file));
  }
}
