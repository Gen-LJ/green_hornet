
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:green_hornet/ui/screen/announcement_screen/announcement_screen.dart';
import 'package:green_hornet/ui/screen/discussion_screen/discussion_screen.dart';
import 'package:green_hornet/ui/screen/home_screen/home_screen.dart';
import 'package:green_hornet/ui/screen/story_screen/story_screen.dart';
import 'package:green_hornet/utils/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../leave_request_screen/leave_request_screen.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style3,
      backgroundColor: AppColor.themeNavyBlueColor,
      // decoration: NavBarDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   colorBehindNavBar: AppColor.themeNavyBlueColor
      // ),

    );
  }
  List<Widget> _buildScreens() {
    return [
      StoryScreen(),
      AnnouncementScreen(),
      DiscussionScreen(),
      LeaveRequestScreen(),
      const HomeScreen(),
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.circle_grid_hex),
        title: ("Story"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.speaker),
        title: ("Notice"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.text_bubble_fill),
        title: ("Discuss"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add_card),
        title: ("Request"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.child_care_rounded),
        title: ("Profile"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),

    ];
  }
}
