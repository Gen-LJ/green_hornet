import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/story_screen/story_screen_widget.dart';


class StoryScreen extends StatefulWidget {
   StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}


class _StoryScreenState extends State<StoryScreen> {

  var photoListKK = <String>[
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2019/07/07/06/34/network-4321832_1280.jpg',
    'https://en.wikifur.com/w/images/thumb/3/3a/Madagasca_Penguins.jpg/800px-Madagasca_Penguins.jpg',
    'https://media.npr.org/assets/img/2014/11/21/penguins-of-madagascar-peng_sq700_s22_f312_v1_0_rgb_rgb_wide-3b21542d91d2a5875856a3e9f73bf0ec3ce2e169.jpg',
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80',
    'https://cdn.pixabay.com/photo/2019/07/07/06/34/network-4321832_1280.jpg',
  ];

  var photoListZZ = <String> [
    'https://randomuser.me/api/portraits/men/84.jpg',
    'https://randomuser.me/api/portraits/men/49.jpg',
    'https://randomuser.me/api/portraits/men/45.jpg',
    'https://randomuser.me/api/portraits/women/9.jpg',
    'https://randomuser.me/api/portraits/women/10.jpg',
  ];

  var photoListMM = ['https://randomuser.me/api/portraits/women/10.jpg'];

  @override
  Widget build(BuildContext context) {
    return StoryScreenWidget(imageListKoKo: photoListKK,imageListZawZaw: photoListZZ,imageListMaMa: photoListMM,);
  }


}
