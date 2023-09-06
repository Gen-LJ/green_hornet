import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/story_screen/story_screen_widget.dart';


class StoryScreen extends StatelessWidget {
    StoryScreen({super.key});

  var landscapesrc = "https://assets.mixkit.co/videos/preview/mixkit-spinning-around-the-earth-29351-large.mp4";

  var potraitsrc = "https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubble-gum-at-an-amusement-park-1226-large.mp4";

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

  var photoListAA = ['https://images.unsplash.com/photo-1604964432806-254d07c11f32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZGV2ZWxvcGVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=900&q=60'];

  var photoListKyaw = ['https://media.istockphoto.com/id/1605476201/photo/programming-and-coding.jpg?s=1024x1024&w=is&k=20&c=3iDwy8kWppETGy6l-2jHz-gT6oh005enpBuZmKsEiqg='];

  var photoListHead =['https://media.istockphoto.com/id/525409577/photo/elevated-view-of-students-writing-their-gcse-exam.jpg?s=1024x1024&w=is&k=20&c=c-ojE5uhGJfTRkBb9hWkp1Bnc7CRpI_ZsHyHJwhxwyE='];

  var photoListYi = ['https://images.unsplash.com/photo-1497633762265-9d179a990aa6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2073&q=80'];

  var photoListSin =['https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=987&q=80'];

  @override
  Widget build(BuildContext context) {
    return StoryScreenWidget(
      imageListKoKo: photoListKK,
      imageListZawZaw: photoListZZ,
      imageListMaMa: photoListMM,
      imageListAA: photoListAA,
      imageListKyawKyaw: photoListKyaw,
      imageListHead: photoListHead,
      imageListYi: photoListYi,
      imageListSin: photoListSin,
      landscapeVideoSrc: landscapesrc,
      portraitVideoSrc: potraitsrc,);
  }
}
