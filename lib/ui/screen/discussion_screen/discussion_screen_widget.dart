import 'package:flutter/material.dart';
import 'package:green_hornet/model/discussion_data_structure.dart';
import 'package:readmore/readmore.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../utils/colors.dart';
import '../../../utils/helper.dart';
import '../../widget/multi_image_view/image_slide_show.dart';
import '../../widget/multi_image_view/smart_image.dart';
import '../../widget/multi_image_view/thread_multi_image_view.dart';
import '../drawer_screen/drawer_widget.dart';

class DiscussionScreenWidget extends StatefulWidget {
   DiscussionScreenWidget({super.key, this.imageListKoKo, this.imageListZZ});
   final imageListKoKo;
   final imageListZZ;

  @override
  State<DiscussionScreenWidget> createState() => _DiscussionScreenWidgetState();
}

class _DiscussionScreenWidgetState extends State<DiscussionScreenWidget> {
  final bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    List<DiscussionData> dummyData = [
      DiscussionData(userName: 'Ko Ko',userThumbnail: '',grade :'Year-1(Diamond)',postTimeStamp: DateTime.now().subtract(const Duration(hours: 10)),postImage:  widget.imageListKoKo,postContent: 'Hello teacher, I want to know what keyboard should i use for my child to study.I am struggling to choice the right one.Can u suggest one please?',postCommentCount: 5, status: false,),
      DiscussionData(userName: 'Zaw Zaw',userThumbnail: '',grade :'Year-2(Platinum)',postTimeStamp: DateTime.now().subtract(const Duration(hours: 12)),postImage:  widget.imageListZZ,postContent: 'Hello teacher and all, I want to know what books should I buy for my child to improve vocabulary.I am struggling to choice the right one.Can u suggest one please?',postCommentCount: 20, status: true,),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: buildAppTitleRow(() {
                showPopup(context);
              },
                  dateFormatted(date: DateTime.now().toString(),
                      formatType: formatForDateTime(FormatType.date)),
                  title: 'Discussion'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(

                          backgroundColor: AppColor.themeNavyBlueColor
                      ),
                      onPressed: (){
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => const AddRequestScreen()));
                      },
                      child: const Row(
                            children: [
                                Text('Create Discussion',style: TextStyle(color: Colors.white),),
                                Icon(Icons.add_rounded,color: Colors.white,),
                    ],
                  ))
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: dummyData.length,
                      itemBuilder: (context,index){
                        return _listTile(dummyData[index]);
                      }),
                  // ListView(
                  //   shrinkWrap: true,
                  //   children : dummyData.map(_listTile).toList(),
                  // ),
                  _isLoading ? Positioned(
                      child: Container(
                        color: Colors.white.withOpacity(0.7),
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                  ) : Container()
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


  Widget _listTile(DiscussionData data){
    return Padding(
      padding: const EdgeInsets.only(top: 2,bottom: 2),
      child: Card(

          elevation: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.person,size: 34,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data.userName?? '',style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            const SizedBox(height: 3,),
                            Row(
                              children: [
                                Text(data.grade!,style: const TextStyle(fontSize: 15),),
                                const SizedBox(width: 10,),
                                //Text(readTimestamp(data.timeStamp!),style: TextStyle(fontSize: 20),),
                                Text(timeago.format(data.postTimeStamp!),style: const TextStyle(fontSize: 15),),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    data.status ?
                    Container(
                      //margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          //border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.blue),
                         child: const Text('OPEN',style: TextStyle(color: Colors.white),)) :
                    Container(
                        //margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            //border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(3),
                            color: AppColor.themeGreenColor),
                        child: const Text('PRIVATE',style: TextStyle(color: Colors.white),))

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
                child: ReadMoreText(data.postContent?? '',style: const TextStyle(fontSize: 17),
                  trimLines: 3,
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'See more',
                  trimExpandedText: 'See less',

                ),
              ),
              const Divider(color: Colors.black,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Row(
                    //   children: [
                    //     const Icon(Icons.thumb_up),
                    //     Padding(
                    //       padding: const EdgeInsets.only(left: 8),
                    //       child: Text('Like ( ${data.postLikeCount} )',style: const TextStyle(fontWeight: FontWeight.bold),),
                    //     ),
                    //   ],
                    // ),
                    //SizedBox(width: 10,),
                    Row(
                      children: [
                        const Icon(Icons.mode_comment),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text('Comment ( ${data.postCommentCount} )',style: const TextStyle(fontWeight: FontWeight.bold),),
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
