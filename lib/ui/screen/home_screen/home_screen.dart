import 'package:flutter/material.dart';


import '../../../utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        backgroundColor: AppColor.themeGreenColor
    ),
    body: Card(
      elevation: 2,
      child: Container(
        height: 60,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
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
