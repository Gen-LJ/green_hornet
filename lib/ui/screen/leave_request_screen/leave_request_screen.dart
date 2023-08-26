import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/leave_request_screen/leave_request_screen_widget.dart';

import '../../../utils/colors.dart';

class LeaveRequestScreen extends StatefulWidget {
  const LeaveRequestScreen({super.key});

  @override
  State<LeaveRequestScreen> createState() => _LeaveRequestScreenState();
}

class _LeaveRequestScreenState extends State<LeaveRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return LeaveRequestWidget();
  }
}
