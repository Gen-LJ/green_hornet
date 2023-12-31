

import 'package:get/get.dart';

import '../../../ui/screen/announcement_screen/announcement_screen.dart';
import '../../../ui/screen/discussion_screen/discussion_screen.dart';
import '../../../ui/screen/home_screen/home_screen.dart';
import '../../../ui/screen/leave_request_screen/leave_request_screen.dart';
import '../../../ui/screen/story_screen/story_screen.dart';
import '../../../utils/images.dart';

class DashboardManagerController extends GetxController{
  RxInt currantIndex = 0.obs;
  RxList naviBarItemList = [
    {'icon': DefaultImages.homeStory, 'title': ' Story ', 'screen': StoryScreen()},
    {'icon': DefaultImages.categoriesIcn, 'title': 'Notice', 'screen': AnnouncementScreen()},
    {'icon': DefaultImages.dashboardIcn, 'title': 'Dashboard', 'screen': HomeScreen()},
    {'icon': DefaultImages.chatIcn, 'title': 'Discuss', 'screen': DiscussionScreen()},
    {'icon': DefaultImages.settingIcn, 'title': 'Request', 'screen': LeaveRequestScreen()},
  ].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    currantIndex.value = 0;
  }
}