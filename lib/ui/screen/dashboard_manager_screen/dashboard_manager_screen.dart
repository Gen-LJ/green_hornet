// ignore_for_file: avoid_print, must_be_immutable, prefer_const_constructors_in_immutables

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../core/controller/dashboard_manager_controller/dashboard_manager_controller.dart';
import '../../../utils/colors.dart';
import '../../widget/custom_bottom_nav_bar/bar_item.dart';
import '../../widget/custom_bottom_nav_bar/custom_bottom_nav_bar.dart';

class DashBoardManagerScreen extends StatefulWidget {
  DashBoardManagerScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardManagerScreen> createState() => _DashBoardManagerScreenState();
}

class _DashBoardManagerScreenState extends State<DashBoardManagerScreen> {
  DashboardManagerController dashboardManagerController = Get.put(DashboardManagerController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dashboardManagerController.currantIndex.value = 2;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.cBackGround,
      body: Obx(() => dashboardManagerController.naviBarItemList[dashboardManagerController.currantIndex.value]['screen']),
      bottomNavigationBar: Obx(() {
        return CustomConvexAppBar(
          backgroundColor: AppColor.cBottomNavyBlueColor,
          color: AppColor.cDarkGreyFont,
          activeColor: AppColor.cWhite,
          height: 65,
          style: TabStyle.fixedCircle,
          top: -35,
          // cornerRadius: 15,
          // curveSize: 90,
          curve: Curves.easeOut,
          initialActiveIndex: dashboardManagerController.currantIndex.value,
          disableDefaultTabController: false,
          items: dashboardManagerController.naviBarItemList.map((element) {
            return CustomTabItem(icon: element['icon'], title: element['title']);
          }).toList(),
          onTap: (index) {
            dashboardManagerController.currantIndex.value = index;
            print('click index=$index');
          },
        );
      }),
    );
  }
}
