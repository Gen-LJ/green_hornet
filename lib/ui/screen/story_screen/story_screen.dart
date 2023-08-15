import 'package:flutter/material.dart';
import 'package:green_hornet/utils/utils.dart';

import '../../../model/thread_post_data_structure.dart';
import '../../../utils/colors.dart';
import 'package:timeago/timeago.dart' as timeago;

class StoryScreen extends StatefulWidget {
   StoryScreen({super.key});



  @override
  State<StoryScreen> createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  List<ThreadPostData> dummyData = [
    ThreadPostData(userName: 'Ko Ko',userThumbnail: '',grade :'Year-1(Diamond)',postTimeStamp: DateTime.now().subtract(new Duration(seconds: 10)),postContent: 'This is first post,Hello',postLikeCount: 4,postCommentCount: 5,),
    ThreadPostData(userName: 'Mg Mg',userThumbnail: '',grade :'Year-1(Gold)',postTimeStamp: DateTime.now().subtract(new Duration(days: 3)),postContent: 'Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,Nice to meet u everyone,',postLikeCount: 4,postCommentCount: 5,),
    ThreadPostData(userName: 'Zaw Zaw',userThumbnail: '',grade :'Year-3(Ruby)',postTimeStamp: DateTime.now().subtract(new Duration(days: 7)),postContent: 'This is test content',postLikeCount: 4,postCommentCount: 5,),
    ThreadPostData(userName: 'U Kyaw',userThumbnail: '',grade :'Year-5(Platinum)',postTimeStamp: DateTime.now().subtract(new Duration(days: 12)),postContent: 'This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.This is test content,I am U kyaw.',postLikeCount: 4,postCommentCount: 5,),
    ThreadPostData(userName: 'Ma Ma',userThumbnail: '',grade :'Year-4(Sapphire)',postTimeStamp: DateTime.now().subtract(new Duration(days: 16)),postContent: 'This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.This is test content,My name is Ma Ma. I live in yangon.',postLikeCount: 4,postCommentCount: 5,),
  ];


  bool _isLoading = false;
  @override
  void initState() {
    //_takeUserDataFromFB()
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
      appBar: AppBar(
        title: const Text('Thread Prototype with Dummy data'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor,
      ),
      body: Stack(
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
    );
  }




  Widget _listTile(ThreadPostData data){
    return Padding(
      padding: EdgeInsets.all(2),
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
                      Text(data.userName?? '',style: TextStyle(fontSize: 20),),
                      SizedBox(height: 3,),
                      Row(
                        children: [
                          Text(data.grade!,style: TextStyle(fontSize: 15),),
                          SizedBox(width: 10,),
                          //Text(readTimestamp(data.postTimeStamp!),style: TextStyle(fontSize: 20),),
                          Text(timeago.format(data.postTimeStamp!),style: TextStyle(fontSize: 15),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Divider(height: 4,color: Colors.black,),
              Text(data.postContent?? '',style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              Divider(color: Colors.black,),
              const Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      Text('Like'),
                    ],
                  ),
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      Icon(Icons.mode_comment),
                      Text('Comment'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,)
            ],
          ),
        )

        // ListTile(
        //   onTap: (){
        //     print('tap the listTile botton');
        //   },
        //   title: Text(data.postContent ?? '',style: TextStyle(fontSize: 18),),
        // ),
      ),
    );
  }


}
