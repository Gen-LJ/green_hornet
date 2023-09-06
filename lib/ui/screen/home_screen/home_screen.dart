import 'package:flutter/material.dart';


import '../../../utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor
    ),
    body: const Card(
      elevation: 2,
      child: SizedBox(
        height: 60,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person,size: 30,),
              ),
              Text("Your Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ],
          ),
      ),
    ),
    );
  }
}
