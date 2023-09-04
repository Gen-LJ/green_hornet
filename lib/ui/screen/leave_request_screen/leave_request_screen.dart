import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/leave_request_screen/leave_request_screen_widget.dart';

class LeaveRequestScreen extends StatelessWidget {
   LeaveRequestScreen({super.key});

  var uBaFiles = 'assets_file/Medical_Records.pdf';

  @override
  Widget build(BuildContext context) {
    return  LeaveRequestWidget(uBaAttachFile: uBaFiles,);
  }
}
