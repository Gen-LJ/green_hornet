
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../utils/colors.dart';

class CreatePostScreen extends StatefulWidget {

   const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  FocusNode createTextFocus = FocusNode();
  TextEditingController createTextController = TextEditingController();
  List<File> selectedImages = [];
  List<String> selectedSubImages = <String>[];
  final picker = ImagePicker();

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
          () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }

  // Future getImages1() async {
  //   final picker = ImagePicker(); //
  //   final pickedFile = await picker.pickMultiImage(imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
  //   List<XFile> xFilePick = pickedFile;
  //
  //   if (xFilePick.isNotEmpty) {
  //     for (var i = 0; i < xFilePick.length; i++) {
  //       selectedSubImages.add(File(xFilePick[i].path).path);
  //     }
  //     setState(() {
  //
  //     });
  //   } else {
  //     commonToast("'Nothing is selected'");
  //   }
  // }


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
                  //Navigator.pop(context);
            }, child: const Text('POST')),
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded,color: Colors.black,),
        ),
        title: const Text('Create post',style: TextStyle(color: Colors.black),),

      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 14,left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.person,size: 30,),
                  ),
                  Text("Your Name",
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

                ],
              ),
              ElevatedButton(onPressed:(){
                getImages();
              },
                style: ElevatedButton.styleFrom(
                    primary: AppColor.themeGreenColor
                ), child: const Text('Photo/Video'),
              ),

            ],
          ),

            const Divider(height: 1,color: Colors.black,),
             SizedBox(
                //color: Colors.red,
                //width: 300.0,
                height: 200,
                child: selectedImages.isEmpty
                ? const Center(child: Text('Sorry nothing selected!!'))
                : GridView.builder(
                  itemCount: selectedImages.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Image.file(selectedImages[index]));
              },
            ),
          ),
            Expanded(
              child: TextFormField(
                autofocus: true,
                focusNode: createTextFocus,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Write your content',
                  hintMaxLines: 4
                ),
                controller: createTextController,
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            )


          ],
        ),
      ),
    );
  }
}
