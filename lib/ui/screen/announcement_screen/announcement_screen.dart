

import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/announcement_screen/announcement_screen_widget.dart';

import '../../../utils/colors.dart';
import '../../widget/video_player/video_player_widget.dart';

class AnnouncementScreen extends StatefulWidget {
   AnnouncementScreen({super.key});


  @override
  State<AnnouncementScreen> createState() => _AnnouncementScreenState();
}

class _AnnouncementScreenState extends State<AnnouncementScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnouncementScreenWidget();
  }
}
