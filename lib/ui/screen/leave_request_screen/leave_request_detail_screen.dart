import 'package:flutter/material.dart';

class LeaveRequestDetail extends StatefulWidget {
  const LeaveRequestDetail({super.key});

  @override
  State<LeaveRequestDetail> createState() => _LeaveRequestDetailState();
}

class _LeaveRequestDetailState extends State<LeaveRequestDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leave Request Detail Screen'),
      ),
    );
  }
}
