import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/announcement_screen/announcement_detail_screen.dart';
import 'package:green_hornet/ui/widget/common_space_divider_widget.dart';
import '../../../model/announcement_data_structure.dart';
import '../../../utils/helper.dart';
import '../drawer_screen/drawer_widget.dart';


class AnnouncementScreenWidget extends StatefulWidget {
  final imageListTKhaing;
  final imageListGrade2R;
  final imageListHM;
  final TKhaingfiles;
  const AnnouncementScreenWidget({super.key, this.imageListTKhaing, this.imageListGrade2R, this.imageListHM, this.TKhaingfiles});

  @override
  State<AnnouncementScreenWidget> createState() => _AnnouncementScreenWidgetState();
}

class _AnnouncementScreenWidgetState extends State<AnnouncementScreenWidget> {







  @override
  Widget build(BuildContext context) {
    List<AnnouncementData> aDummyData = [
      AnnouncementData(userName: 'Teacher Khaing',
        userThumbnail: '',
        grade :'Year-1(Diamond)',
        postTimeStamp: DateTime.now().subtract(Duration(seconds: 10)),
        postImage:  widget.imageListTKhaing,
        postTitle: 'Reading Room for Grade - 5',
        timeUploaded: DateTime(2023,7,23),
        postContent: 'We have a meeting at monday from 4:00 pm to 6:00 pm. We will be reading our opinion on grade-5',
        attachmentFiles: widget.TKhaingfiles,
        postLikeCount: 4,
        subtitle1: 'All Day',
        postCommentCount: 5,
      subtitle2: 'Monday',
      ),
      AnnouncementData(userName: 'Grade-2 (Ruby)',
        userThumbnail: '',
        grade :'Year-1(Diamond)',
        postTimeStamp: DateTime.now().subtract(Duration(days: 2)),
        postImage:  widget.imageListGrade2R,
        postTitle: 'Teachers and Parent meeting for Grade - 2',
        timeUploaded: DateTime(2022,3,6),
        postContent: 'We will meet the parent of the student at 2:00 pm at Tuesday',
        postLikeCount: 4,
        postCommentCount: 5,
      subtitle1: 'At 2:00 pm',
      subtitle2: 'Tuesday'),
      AnnouncementData(userName: 'HeadMaster',
        userThumbnail: '',
        grade :'All Student',
        postTimeStamp: DateTime.now().subtract(Duration(days: 10)),
        postImage:  widget.imageListHM,
        postTitle: 'Graduation Ceremony',
        timeUploaded: DateTime(2022,1,15),
        postContent: 'The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. ',
        postLikeCount: 100,
        postCommentCount: 50,
      subtitle1: 'December First week',
      subtitle2: 'From Headmaster'),
      AnnouncementData(userName: 'HeadMaster',
          userThumbnail: '',
          grade :'All Student',
          postTimeStamp: DateTime.now().subtract(Duration(days: 10)),
          postImage:  widget.imageListHM,
          postTitle: 'Graduation Ceremony',
          timeUploaded: DateTime(2022,1,15),
          postContent: 'The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. ',
          postLikeCount: 100,
          postCommentCount: 50,
          subtitle1: 'December First week',
          subtitle2: 'From Headmaster'),
      AnnouncementData(userName: 'HeadMaster',
          userThumbnail: '',
          grade :'All Student',
          postTimeStamp: DateTime.now().subtract(Duration(days: 10)),
          postImage:  widget.imageListHM,
          postTitle: 'Graduation Ceremony',
          timeUploaded: DateTime(2022,1,15),
          postContent: 'The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. ',
          postLikeCount: 100,
          postCommentCount: 50,
          subtitle1: 'December First week',
          subtitle2: 'From Headmaster'),
      AnnouncementData(userName: 'HeadMaster',
          userThumbnail: '',
          grade :'All Student',
          postTimeStamp: DateTime.now().subtract(Duration(days: 10)),
          postImage:  widget.imageListHM,
          postTitle: 'Graduation Ceremony',
          timeUploaded: DateTime(2022,1,15),
          postContent: 'The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. ',
          postLikeCount: 100,
          postCommentCount: 50,
          subtitle1: 'December First week',
          subtitle2: 'From Headmaster'),
      AnnouncementData(userName: 'HeadMaster',
          userThumbnail: '',
          grade :'All Student',
          postTimeStamp: DateTime.now().subtract(Duration(days: 10)),
          postImage:  widget.imageListHM,
          postTitle: 'Graduation Ceremony',
          timeUploaded: DateTime(2022,1,15),
          postContent: 'The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. The Graduation ceremony will be held at December first week. ',
          postLikeCount: 100,
          postCommentCount: 50,
          subtitle1: 'December First week',
          subtitle2: 'From Headmaster'),


    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left : 3,right: 12),
              child: buildAppTitleRow(() {
                showPopup(context);
              },
                dateFormatted(date: DateTime.now().toString(),
                    formatType: formatForDateTime(FormatType.date)),
                title: 'Announcement'
              ),
            ),
            verticalSpace(7),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ListView.builder(
                    itemCount: aDummyData.length,
                    itemBuilder: (context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(9)
                            ),
                            child: _announceList(aDummyData[index])),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _announceList(AnnouncementData data){
    return ListTile(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(
                builder: (context)=> AnnouncementDetail(announcementData: data,)
            ));
      },
      leading:  Column(
        children: [
          if(data.timeUploaded != null)
          Text(
      dateFormatted(
      date: data.timeUploaded.toString(),
        formatType: formatForDateTime(FormatType.d)),
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20),),
          if(data.timeUploaded != null)
          Text(
              dateFormatted(
              date: data.timeUploaded.toString(),
              formatType: formatForDateTime(FormatType.MMM)),style:
            const TextStyle(fontSize: 12),),
        ],
      ),
      title:  Text(data.postTitle ?? '',
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16),),
      subtitle:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${data.subtitle1 ?? ''} ',style: TextStyle(fontSize: 12),),
          SizedBox(height: 3),
          Text('${data.subtitle2 ?? ''} ',style: TextStyle(fontSize: 12),),
        ],
      ),
      isThreeLine: true,
    );
  }



}
