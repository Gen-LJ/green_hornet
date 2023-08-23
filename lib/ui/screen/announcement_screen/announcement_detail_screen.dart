import 'package:flutter/material.dart';
import 'package:green_hornet/model/announcement_data_structure.dart';
import 'package:green_hornet/utils/colors.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../widget/multi_image_view/image_slide_show.dart';
import '../../widget/multi_image_view/smart_image.dart';
import '../../widget/multi_image_view/thread_multi_image_view.dart';

class AnnouncementDetail extends StatefulWidget {
  final AnnouncementData announcementData;
  const AnnouncementDetail({super.key, required this.announcementData});

  @override
  State<AnnouncementDetail> createState() => _AnnouncementDetailState();
}

class _AnnouncementDetailState extends State<AnnouncementDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.announcementData.postTitle ?? ''),
      backgroundColor: AppColor.themeGreenColor,),
      body: SingleChildScrollView(
          child: _announcementDetail(widget.announcementData)),
    );
  }



  Widget _announcementDetail(AnnouncementData data){
    return Padding(
      padding: EdgeInsets.only(top: 2,bottom: 2),
      child: Card(
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.person,size: 34,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.userName?? '',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 3,),
                        Row(
                          children: [
                            Text(data.grade!,style: TextStyle(fontSize: 15),),
                            SizedBox(width: 10,),
                            //Text(readTimestamp(data.timeStamp!),style: TextStyle(fontSize: 20),),
                            Text(timeago.format(data.postTimeStamp!),style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Divider(height: 4,color: Colors.black,),
              if(data.postImage != null)
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ImageViewer(imageUrls: data.postImage!)));
                  },
                  child: ImageSlideshow(
                    children: data.postImage!.map(
                          (e) => ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SmartImage(
                          e,
                          fit: BoxFit.cover,
                          isPost: true,
                        ),
                      ),
                    )
                        .toList(),),
                ),
              //_PhotoSlide(data),
              //  if(data.postVideo != null)
              //    ChewiePlayer(srcs: data.postVideo,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(data.postContent?? '',style: TextStyle(fontSize: 17),),
              ),
              Divider(color: Colors.black,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.thumb_up),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text('Like ( ${data.postLikeCount} )',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    //SizedBox(width: 10,),
                    Row(
                      children: [
                        Icon(Icons.mode_comment),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text('Comment ( ${data.postCommentCount} )',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )

      ),
    );
  }


}