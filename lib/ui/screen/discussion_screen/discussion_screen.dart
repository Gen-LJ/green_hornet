



import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/discussion_screen/discussion_screen_widget.dart';



import '../../../utils/colors.dart';

class DiscussionScreen extends StatelessWidget {
    DiscussionScreen({super.key});
   var photoListAA = ['https://images.unsplash.com/photo-1604964432806-254d07c11f32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZGV2ZWxvcGVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=900&q=60'];
   var photoListSin =['https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80'];
  @override
  Widget build(BuildContext context) {
    return DiscussionScreenWidget(imageListKoKo: photoListAA,imageListZZ: photoListSin,);
  }
}
