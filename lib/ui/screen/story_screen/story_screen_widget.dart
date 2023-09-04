

import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/story_screen/create_post_screen.dart';
import 'package:green_hornet/ui/screen/story_screen/comment_screen.dart';
import 'package:green_hornet/ui/widget/multi_image_view/image_slide_show.dart';
import 'package:green_hornet/ui/widget/multi_image_view/thread_multi_image_view.dart';
import 'package:green_hornet/utils/colors.dart';
import 'package:readmore/readmore.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../model/thread_post_data_structure.dart';
import '../../../utils/helper.dart';
import '../../widget/multi_image_view/smart_image.dart';
import '../drawer_screen/drawer_widget.dart';

class StoryScreenWidget extends StatefulWidget {
  final String? landscapeVideoSrc;
  final String? portraitVideoSrc;
  final List<String>? imageListKoKo;
  final List<String>? imageListZawZaw;
  final List<String>? imageListMaMa;
  final List<String>? imageListAA;
  final List<String>? imageListKyawKyaw;
  final List<String>? imageListHead;
  final List<String>? imageListYi;
  final List<String>? imageListSin;
  const StoryScreenWidget({super.key, this.imageListKoKo, this.imageListZawZaw, this.imageListMaMa, this.landscapeVideoSrc, this.portraitVideoSrc, this.imageListAA, this.imageListKyawKyaw, this.imageListHead, this.imageListYi, this.imageListSin});

  @override
  State<StoryScreenWidget> createState() => _StoryScreenWidgetState();
}

class _StoryScreenWidgetState extends State<StoryScreenWidget> {
  final bool _isLoading = false;

  @override
  void initState(){
    super.initState();

  }

  // Future<void> _takeUserDataFromFB() async{
  //   setState(() {
  //     _isLoading = true;
  //   });
  // }

  //int _slideIndex = 0;


  @override
  Widget build(BuildContext context) {

    List<ThreadPostData> dummyData = [
      ThreadPostData(userName: 'Ko Ko',userThumbnail: '',grade :'Year-1(Diamond)',postTimeStamp: DateTime.now().subtract(const Duration(seconds: 10)),postImage:  widget.imageListKoKo,postContent: 'ကိုကောင်းတင်တဲ့စာ',postLikeCount: 4,postCommentCount: 5,),
      ThreadPostData(userName: 'Mg Mg',userThumbnail: '',grade :'Year-1(Gold)',postTimeStamp: DateTime.now().subtract(const Duration(days: 3)),postVideo : widget.landscapeVideoSrc,postContent: 'Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,',postLikeCount: 10,postCommentCount: 6,),
      ThreadPostData(userName: 'Zaw Zaw',userThumbnail: '',grade :'Year-3(Ruby)',postTimeStamp: DateTime.now().subtract(const Duration(days: 7)),postImage : widget.imageListZawZaw,postContent: 'This is test content',postLikeCount: 13,postCommentCount: 4,),
      ThreadPostData(userName: 'U Kyaw',userThumbnail: '',grade :'Year-5(Platinum)',postTimeStamp: DateTime.now().subtract(const Duration(days: 12)),postVideo : widget.portraitVideoSrc,postContent: 'This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.',postLikeCount: 16,postCommentCount: 3,),
      ThreadPostData(userName: 'Ma Ma',userThumbnail: '',grade :'Year-4(Sapphire)',postTimeStamp: DateTime.now().subtract(const Duration(days: 16)),postImage : widget.imageListMaMa,postContent: 'This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.',postLikeCount: 20,postCommentCount: 1,),
      ThreadPostData(userName: 'Aung Aung',userThumbnail: '',grade :'Year-3(Sapphire)',postTimeStamp: DateTime.now().subtract(const Duration(days: 20)),postImage : widget.imageListAA,postContent: 'According to the jaw fragments of primates found in Myaing Township, Magway Division, Myanmar history can be assumed to have started 40 million years ago. Similarly, the discovery named Pondaungia found in Pondaung area and the discovery named Mogaungensis found near Mogaung village indicate that anthropoids have been living in Myanmar since 40 million years ago. A higher primate found in Pondaung area, Myanmar, called Dawn Ape with the scientific name of Amphipithecus, was tested to be 40 million years old.'
      'Similarly, Myanmar, like other countries in the world, went through the Stone Age. Paleolithic humans have been living along the Irrawaddy River in Central Myanmar since the Middle Pleistocene. In 9000 BC (11,000 years ago), traces of Late Paleolithic and Early Neolithic civilizations was found in Padalin Cave. Neolithic humans lived in the Padalin cave from 5740 BC (7740 years ago) to 4570 BC (6570 years ago). Neolithic tools and weapons have been widely found in Tanintharyi in the south, in Putao in the north, from the foothills of Rakhine Yoma in the west to Thanlwin River in the east.',postLikeCount: 11,postCommentCount: 9,),
      ThreadPostData(userName: 'Kyaw Kyaw',userThumbnail: '',grade :'Year-1(Ruby)',postTimeStamp: DateTime.now().subtract(const Duration(days: 30)),postImage : widget.imageListKyawKyaw,postContent: 'This is test content,My name is Kyaw Kyaw. I live in yangon.This is test content, My name is Kyaw Kyaw. I live in yangon.This is test content, My name is . I live in yangon.This is test content, My name is . I live in yangon.This is test content,My name is .',postLikeCount: 30,postCommentCount: 10,),
      ThreadPostData(userName: 'Head Master',userThumbnail: '',grade :'Year-3(Gold)',postTimeStamp: DateTime.now().subtract(const Duration(days: 40)),postImage : widget.imageListHead,postContent: 'This is test content,My name is U Ba. I live in yangon.',postLikeCount: 23,postCommentCount: 13,),
      ThreadPostData(userName: 'Teacher Yi',userThumbnail: '',grade :'Year-2(Diamond)',postTimeStamp: DateTime.now().subtract(const Duration(days: 50)),postImage : widget.imageListYi,postContent: 'This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.',postLikeCount: 15,postCommentCount: 2,),
      ThreadPostData(userName: 'Teacher Sin',userThumbnail: '',grade :'Year-4(Platinum)',postTimeStamp: DateTime.now().subtract(const Duration(days: 400)),postImage : widget.imageListSin,postContent: 'This is test content,My name is Sin. I live in yangon.Welcome Everyone.This is test content, My name is Sin. I live in yangon. Welcome Everyone.This is test content,My name is Sin. I live in yangon. Welcome Everyone.This is test content,My name is Sin. I live in yangon. Welcome Everyone.',postLikeCount: 26,postCommentCount: 9,),
    ];


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:3,right: 12.0),
              child: buildAppTitleRow(() {
                showPopup(context);
              },
                dateFormatted(date: DateTime.now().toString(),
                    formatType: formatForDateTime(FormatType.date)),
                title: 'Story'
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 8),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style : ElevatedButton.styleFrom(
                        backgroundColor: AppColor.cBottomNavyBlueColor
                      ),
                      onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CreatePostScreen()));
                  },
                      child: const Text('Create Post',style: TextStyle(fontSize: 12),)),
                IconButton(onPressed: (){

                },
                    icon: const Icon(Icons.sort,size: 30,)
                ),

              ],),
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


  Widget _listTile(ThreadPostData data){
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
                  children: [
                     const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.person,size: 34,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data.userName?? '',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        const SizedBox(height: 3,),
                        Row(
                          children: [
                            Text(data.grade!,style: const TextStyle(
                                fontSize: 12,
                                // color: Colors.grey
                            ),
                            ),
                            const SizedBox(width: 10,),
                            //Text(readTimestamp(data.timeStamp!),style: TextStyle(fontSize: 20),),
                            Text(timeago.format(data.postTimeStamp!),
                              style: const TextStyle(
                                fontSize: 12,
                              //color: Colors.grey
                              ),),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Divider(height: 4,color: Colors.black,),
              if(data.postImage != null)
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 8),
                  child: GestureDetector(
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
                ),
              //_PhotoSlide(data),
              //  if(data.postVideo != null)
              //    ChewiePlayer(srcs: data.postVideo,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ReadMoreText(data.postContent?? '',style: const TextStyle(fontSize: 14),
                trimLines: 3,
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'See more',
                  trimExpandedText: 'See less',

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left:12,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.heart_broken),
                        Text(' ${data.postLikeCount} ',style: const TextStyle(fontSize :12,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    //SizedBox(width: 10,),
                    Row(
                      children: [
                        //const Icon(Icons.mode_comment),
                        Text(' ${data.postCommentCount} comments ',style: const TextStyle(fontSize : 12,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ),

              const Divider(color: Colors.grey,),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: const Row(
                        children: [
                          Icon(Icons.thumb_up),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text('Like',style: TextStyle(fontSize :10),),
                          ),
                        ],
                      ),
                    ),
                    //SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CommentScreen(data: data)));
                      },
                      child: const Row(
                        children: [
                          Icon(Icons.mode_comment),
                          Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text('Comment',style: TextStyle(fontSize : 10,),),
                          ),
                        ],
                      ),
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
