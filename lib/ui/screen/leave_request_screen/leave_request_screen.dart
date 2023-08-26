import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/leave_request_screen/leave_request_screen_widget.dart';

class LeaveRequestScreen extends StatefulWidget {
  const LeaveRequestScreen({super.key});

  @override
  State<LeaveRequestScreen> createState() => _LeaveRequestScreenState();
}

class _LeaveRequestScreenState extends State<LeaveRequestScreen> {
  var uBaFiles = 'assets_file/Medical_Records.pdf';
  @override
  Widget build(BuildContext context) {
    return  LeaveRequestWidget(uBaAttachFile: uBaFiles,);
  }
}
