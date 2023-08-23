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
  const AnnouncementScreenWidget({super.key, this.imageListTKhaing, this.imageListGrade2R, this.imageListHM});

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


    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
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
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Colors.grey
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.separated(
                      separatorBuilder: (context,index){
                        return const Divider(color: Colors.grey,);
                      },
                      itemCount: aDummyData.length,
                      itemBuilder: (context,index){
                        return _announceList(aDummyData[index]);
                      }),
                ),
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
                fontSize: 25),),
          if(data.timeUploaded != null)
          Text(
              dateFormatted(
              date: data.timeUploaded.toString(),
              formatType: formatForDateTime(FormatType.MMM))),
        ],
      ),
      title:  Text(data.postTitle ?? '',
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18),),
      subtitle:  Text('${data.subtitle1 ?? ''}\n${data.subtitle2 ?? ''} '),
      isThreeLine: true,
    );
  }



}
