

import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/announcement_screen/announcement_screen_widget.dart';


class AnnouncementScreen extends StatelessWidget {
    AnnouncementScreen({super.key});




  var photoListKKa = <String>[
    'https://media.istockphoto.com/id/1203934172/photo/diverse-group-discussion.jpg?s=1024x1024&w=is&k=20&c=7xAvJwOVEFCgoLXmbmrCzaoDh-dpDg9X2zBo_YMVKJI='];

  var photoListG2R = ['https://media.istockphoto.com/id/499517325/photo/a-man-speaking-at-a-business-conference.jpg?s=1024x1024&w=is&k=20&c=iCUzJvudLPi2HnpAAzIVVqgQVAlnI9TigkEcXcH2NY4='];

  var photoListHM =['https://images.unsplash.com/photo-1523050854058-8df90110c9f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1740&q=80'];

  var tKhaingFiles = 'assets_file/Bilingual-Childrens-Mother-Tongue.pdf';

  @override
  Widget build(BuildContext context) {
    return AnnouncementScreenWidget(
      imageListTKhaing: photoListKKa,
      imageListGrade2R: photoListG2R,
    imageListHM: photoListHM,
    TKhaingfiles: tKhaingFiles,);
  }
}
