import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  FocusNode createTextFocus = FocusNode();
  TextEditingController createTextController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: AppColor.themeNavyBlueColor
                ),
                onPressed: (){
                  print('Content is ${createTextController.text}');
                  Navigator.pop(context);
            }, child: Text('POST')),
          )
        ],
        backgroundColor: AppColor.themeNavyBlueColor,
        title: Text('Create post'),

      ),
      body: Container(
        width: size.width,
        height: size.height - MediaQuery.of(context).viewInsets.bottom,
        child: Padding(
          padding: const EdgeInsets.only(right: 14,left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.person,size: 30,),
                    ),
                    Text("Your Name",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ],
                ),
                ElevatedButton(onPressed:(){

                }, child: Text('Photo/Video'),
                  style: ElevatedButton.styleFrom(
                    primary: AppColor.themeGreenColor
                  ),
                )
              ],
            ),
              Divider(height: 1,color: Colors.black,),
              TextFormField(
                autofocus: true,
                focusNode: createTextFocus,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write your content',
                  hintMaxLines: 4
                ),
                controller: createTextController,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
