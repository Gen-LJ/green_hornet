
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
    );
  }
  List<Widget> _buildScreens() {
    return [
      const StoryScreen(),
      const AnnouncementScreen(),
      const HomeScreen(),
      DiscussionScreen(),
      LeaveRequestScreen()
    ];
  }
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Story"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.announcement_outlined),
        title: ("Announcement"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.recent_actors),
        title: ("Profile"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.display_settings),
        title: ("Discussion"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.add_card),
        title: ("Leave Request"),
        activeColorPrimary: AppColor.themeGreenColor,
        inactiveColorPrimary: Colors.white,
      ),

    ];
  }
}
