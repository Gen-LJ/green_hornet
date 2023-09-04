import 'package:flutter/material.dart';
import 'package:green_hornet/model/thread_post_data_structure.dart';
import 'package:readmore/readmore.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../widget/multi_image_view/image_slide_show.dart';
import '../../widget/multi_image_view/smart_image.dart';
import '../../widget/multi_image_view/thread_multi_image_view.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key, required this.data});
  final ThreadPostData data;

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),color: Colors.black,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.person,
                size: 34,
                color: Colors.black,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.userName ?? '',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold,
                  color: Colors.black),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      widget.data.grade!,
                      style: const TextStyle(
                          fontSize: 12,
                      color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //Text(readTimestamp(data.timeStamp!),style: TextStyle(fontSize: 20),),
                    Text(
                      timeago.format(widget.data.postTimeStamp!),
                      style: const TextStyle(fontSize: 12,color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children:[
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  //color: Colors.white,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.data.postImage != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ImageViewer(
                                        imageUrls: widget.data.postImage!)));
                          },
                          child: ImageSlideshow(
                            children: widget.data.postImage!
                                .map(
                                  (e) => ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: SmartImage(
                                      e,
                                      fit: BoxFit.cover,
                                      isPost: true,
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ),
                    //_PhotoSlide(data),
                    //  if(data.postVideo != null)
                    //    ChewiePlayer(srcs: data.postVideo,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: ReadMoreText(
                        widget.data.postContent ?? '',
                        style: const TextStyle(fontSize: 14),
                        trimLines: 3,
                        colorClickableText: Colors.blue,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'See more',
                        trimExpandedText: 'See less',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.heart_broken),
                              Text(
                                ' ${widget.data.postLikeCount} ',
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          //SizedBox(width: 10,),
                          // Row(
                          //   children: [
                          //     //const Icon(Icons.mode_comment),
                          //     Text(' ${widget.data.postCommentCount} comments ',style: const TextStyle(fontSize : 12,fontWeight: FontWeight.bold),),
                          //   ],
                          // ),
                        ],
                      ),
                    ),

                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.thumb_up),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Like',
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                        //SizedBox(width: 10,),
                        GestureDetector(
                          onTap: () {},
                          child: const Row(
                            children: [
                              Icon(Icons.mode_comment),
                              Padding(
                                padding: EdgeInsets.only(left: 8),
                                child: Text(
                                  'Comment',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.data.postCommentCount,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 50,
                                color: Colors.pink,
                              ),
                              Container(
                                height: 50,
                                color: Colors.blue,
                              )
                            ],
                          );
                        }),

                  ],
          ),
                ),
              ),
            ),
            Container(
              height: 65,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Write a comment',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    ElevatedButton(

                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder()
                        ),
                        onPressed: (){

                        }, child: Icon(Icons.send,size: 20,))
                  ],
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}
