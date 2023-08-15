import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/create_post_screen/create_post_screen.dart';
import 'package:green_hornet/utils/colors.dart';
import 'package:timeago/timeago.dart' as timeago;
import '../../../model/thread_post_data_structure.dart';
import '../../../utils/helper.dart';
import '../drawer_screen/drawer_widget.dart';

class StoryScreenWidget extends StatefulWidget {
  const StoryScreenWidget({super.key});

  @override
  State<StoryScreenWidget> createState() => _StoryScreenWidgetState();
}

class _StoryScreenWidgetState extends State<StoryScreenWidget> {
  List<ThreadPostData> dummyData = [
    ThreadPostData(userName: 'Ko Ko',userThumbnail: '',grade :'Year-1(Diamond)',postTimeStamp: DateTime.now().subtract(new Duration(seconds: 10)),postContent: 'This is first post,Hello',postLikeCount: 4,postCommentCount: 5,),
    ThreadPostData(userName: 'Mg Mg',userThumbnail: '',grade :'Year-1(Gold)',postTimeStamp: DateTime.now().subtract(new Duration(days: 3)),postContent: 'Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,',postLikeCount: 4,postCommentCount: 5,),
    ThreadPostData(userName: 'Zaw Zaw',userThumbnail: '',grade :'Year-3(Ruby)',postTimeStamp: DateTime.now().subtract(new Duration(days: 7)),postContent: 'This is test content',postLikeCount: 4,postCommentCount: 5,),
    ThreadPostData(userName: 'U Kyaw',userThumbnail: '',grade :'Year-5(Platinum)',postTimeStamp: DateTime.now().subtract(new Duration(days: 12)),postContent: 'This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.',postLikeCount: 4,postCommentCount: 5,),
    ThreadPostData(userName: 'Ma Ma',userThumbnail: '',grade :'Year-4(Sapphire)',postTimeStamp: DateTime.now().subtract(new Duration(days: 16)),postContent: 'This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.',postLikeCount: 4,postCommentCount: 5,),
  ];
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


  @override
  Widget build(BuildContext context) {
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
      padding: EdgeInsets.fromLTRB(2,2,2,2),
      child: Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
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
                Divider(height: 4,color: Colors.black,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8,10,4,10),
                  child: Text(data.postContent?? '',style: TextStyle(fontSize: 17),),
                ),
                Divider(color: Colors.black,),
                Row(
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
                    SizedBox(width: 10,),
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
              ],
            ),
          )

      ),
    );
  }



}
