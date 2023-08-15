import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
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

            }, child: Text('POST')),
          )
        ],
        backgroundColor: AppColor.themeGreenColor,
        title: Text('Create post'),

      ),
      body: Text('Create Post'),
    );
  }
}
