import 'package:flutter/material.dart';

void main() {
  runApp(const GreenHornet());
}
 class GreenHornet extends StatelessWidget {
   const GreenHornet({super.key});

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text('Test to upload'),
           centerTitle: true,
         ),
       ),
     );
   }
 }

