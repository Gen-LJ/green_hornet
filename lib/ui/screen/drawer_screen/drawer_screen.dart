// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/controller/drawer_controller/drawer_controller.dart';
import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/text_style.dart';
import '../../widget/common_space_divider_widget.dart';
import '../../widget/icon_and_image.dart';
import 'drawer_widget.dart';


class DrawerScreen extends StatelessWidget {
  DrawerScreen({Key? key}) : super(key: key);
  MyDrawerController drawerController = Get.put(MyDrawerController());

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: Get.width,
        color: AppColor.cBackGround,
        padding: EdgeInsets.all(24),
        child: Obx(() {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    assetSvdImageWidget(image: DefaultImages.closeIcn, width: 18, height: 18),
                    horizontalSpace(20),
                    Text(
                      "Story",
                      style: pRegular14,
                    )
                  ],
                ),
              ),
              verticalSpace(35),
              Wrap(
                children: List.generate(
                  drawerController.drawerItem.length,
                  (index) {
                    var data = drawerController.drawerItem[index];
                    return GestureDetector(
                      onTap: () {
                        drawerController.currantIndex.value = index;
                        if (index != 0) {
                          Get.back();
                          data['function']();
                        } else {
                          data['function']();
                        }
                      },
                      child: drawerWidget(
                        isSelected: drawerController.currantIndex.value == index,
                        title: data['title'],
                        icon: data['icon'],
                      ),
                    );
                  },
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
