import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/story_screen/story_screen_widget.dart';


class StoryScreen extends StatefulWidget {
   StoryScreen({super.key});

  @override
  State<StoryScreen> createState() => _StoryScreenState();
}


class _StoryScreenState extends State<StoryScreen> {

  @override
  Widget build(BuildContext context) {
    return StoryScreenWidget();
  }


}
