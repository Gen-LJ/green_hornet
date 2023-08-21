

import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/create_post_screen/create_post_screen.dart';
import 'package:green_hornet/ui/widget/multi_image_view/image_slide_show.dart';
import 'package:green_hornet/ui/widget/multi_image_view/thread_multi_image_view.dart';
import 'package:green_hornet/utils/colors.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../model/thread_post_data_structure.dart';
import '../../../utils/helper.dart';
import '../../widget/multi_image_view/smart_image.dart';
import '../../widget/video_player/chiewie_player.dart';
import '../drawer_screen/drawer_widget.dart';

class StoryScreenWidget extends StatefulWidget {
  final String? landscapeVideoSrc;
  final String? portraitVideoSrc;
  final List<String>? imageListKoKo;
  final List<String>? imageListZawZaw;
  final List<String>? imageListMaMa;
  const StoryScreenWidget({super.key, this.imageListKoKo, this.imageListZawZaw, this.imageListMaMa, this.landscapeVideoSrc, this.portraitVideoSrc});

  @override
  State<StoryScreenWidget> createState() => _StoryScreenWidgetState();
}

class _StoryScreenWidgetState extends State<StoryScreenWidget> {
  bool _isLoading = false;

  @override
  void initState(){
    super.initState();

  }

  Future<void> _takeUserDataFromFB() async{
    setState(() {
      _isLoading = true;
    });
  }

  //int _slideIndex = 0;


  @override
  Widget build(BuildContext context) {

    List<ThreadPostData> dummyData = [
      ThreadPostData(userName: 'Ko Ko',userThumbnail: '',grade :'Year-1(Diamond)',postTimeStamp: DateTime.now().subtract(new Duration(seconds: 10)),postImage:  widget.imageListKoKo,postContent: 'This is first post,Hello',postLikeCount: 4,postCommentCount: 5,),
      ThreadPostData(userName: 'Mg Mg',userThumbnail: '',grade :'Year-1(Gold)',postTimeStamp: DateTime.now().subtract(new Duration(days: 3)),postVideo : widget.landscapeVideoSrc,postContent: 'Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,',postLikeCount: 4,postCommentCount: 5,),
      ThreadPostData(userName: 'Zaw Zaw',userThumbnail: '',grade :'Year-3(Ruby)',postTimeStamp: DateTime.now().subtract(new Duration(days: 7)),postImage : widget.imageListZawZaw,postContent: 'This is test content',postLikeCount: 4,postCommentCount: 5,),
      ThreadPostData(userName: 'U Kyaw',userThumbnail: '',grade :'Year-5(Platinum)',postTimeStamp: DateTime.now().subtract(new Duration(days: 12)),postVideo : widget.portraitVideoSrc,postContent: 'This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.',postLikeCount: 4,postCommentCount: 5,),
      ThreadPostData(userName: 'Ma Ma',userThumbnail: '',grade :'Year-4(Sapphire)',postTimeStamp: DateTime.now().subtract(new Duration(days: 16)),postImage : widget.imageListMaMa,postContent: 'This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.',postLikeCount: 4,postCommentCount: 5,),
    ];


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0,right: 8.0),
              child: buildAppTitleRow(() {
                showPopup(context);
              },
                dateFormatted(date: DateTime.now().toString(), formatType: formatForDateTime(FormatType.date)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style : ElevatedButton.styleFrom(
                        primary: AppColor.cBottomNavyBlueColor
                      ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CreatePostScreen()));
                  },
                      child: Text('Create Post')),
                IconButton(onPressed: (){

                },
                    icon: Icon(Icons.sort,size: 30,)
                ),

              ],),
            ),
            Expanded(
              child: Stack(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: dummyData.map(_listTile).toList(),
                  ),
                  _isLoading ? Positioned(
                      child: Container(
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                        color: Colors.white.withOpacity(0.7),
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


  Widget _listTile(ThreadPostData data){
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
               if(data.postVideo != null)
                 ChewiePlayer(srcs: data.postVideo,),
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



  // Widget _PhotoSlide(ThreadPostData data){
  //   return Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: Stack(
  //       alignment: Alignment.bottomCenter,
  //       children:[
  //         SizedBox(
  //         //color: Colors.black,
  //         height: 260,
  //           child: PageView.builder(
  //           onPageChanged: (index){
  //             setState(() {
  //               _slideIndex = index;
  //             });
  //           },
  //             itemCount: data.postImage?.length,
  //             itemBuilder: (context,index){
  //               return Column(
  //                 children: [
  //                   SizedBox(),
  //                   if(data.postImage != null)
  //                   ClipRRect(
  //                     borderRadius: BorderRadius.circular(20),
  //                     child: InkWell(
  //                       onTap: (){
  //                         print(' click the ${data.postImage?[index]}');
  //                       },
  //                       child: Image.network(data.postImage?[index],
  //                       height: 260,
  //                       fit: BoxFit.cover,),
  //                     ),
  //                   ),
  //                 ],
  //               );
  //             }),
  //       ),
  //         Container(
  //           //color: Colors.red,
  //           width: 300,
  //           height: 20,
  //           child: Align(
  //             alignment: Alignment.center,
  //             child: ListView.builder(
  //               shrinkWrap: true,
  //                 scrollDirection: Axis.horizontal,
  //                 itemCount: data.postImage?.length,
  //                 itemBuilder: (context,index){
  //                   return Row(
  //                     children: [
  //                       Container(
  //                         height: 8,
  //                         width: 8,
  //                         decoration: BoxDecoration(
  //                           color: index == _slideIndex ? Colors.white : Colors.grey,
  //                           shape: BoxShape.circle
  //                         ),
  //                       ),
  //                       SizedBox(width: 10,)
  //                     ],
  //                   );
  //                 }),
  //           ),
  //         ),
  //         Positioned(
  //           right: 10,
  //           top: 10,
  //           child: Container(
  //             height: 30,
  //             width: 40,
  //             decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(5),
  //               color: Colors.grey[200],
  //             ),
  //             child: Center(child: Text(' ${_slideIndex+1} / ${data.postImage?.length}',style: TextStyle(fontSize: 11),)),
  //           ),
  //         ),
  //         Positioned(
  //           bottom: 10,
  //           child: SingleChildScrollView(
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 for(int i =0;i<data.postImage!.length;i++)
  //                   Row(
  //                     children: [
  //                       SizedBox(width: 5,),
  //                       Container(
  //                         height: 8,
  //                         width: 8,
  //                         decoration: BoxDecoration(
  //                             color: i == _slideIndex ? Colors.white : Colors.grey,
  //                             shape: BoxShape.circle
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //               ],
  //             ),
  //           ),
  //         )
  //
  //       ]
  //     ),
  //   );
//}


}
