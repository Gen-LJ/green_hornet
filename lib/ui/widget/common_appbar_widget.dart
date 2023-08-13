// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/images.dart';
import '../../utils/text_style.dart';
import 'common_space_divider_widget.dart';
import 'icon_and_image.dart';

simpleAppBar({bool isBack = true, required String title, String? date}) {
  return PreferredSize(
    preferredSize: Size(Get.width, 70),
    child: Padding(
      padding: EdgeInsets.only(top: Get.height * 0.07, left: 15, right: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              isBack == true
                  ? GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 43,
                        width: 43,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.cBorder),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Align(
                          child: assetSvdImageWidget(
                              image: DefaultImages.backIcn,
                              width: 11,
                              height: 10,
                              colorFilter: ColorFilter.mode(
                                  AppColor.cLabel, BlendMode.srcIn)),
                        ),
                      ),
                    )
                  : SizedBox(),
              horizontalSpace(isBack == true ? 15 : 0),
              Text(
                title,
                style: pMedium16,
              ),
            ],
          ),
          // Text(
          //   // date,
          //   dateFormatted(date: DateTime.now().toString(), formatType: mmmDdYyyy),
          //   style: pRegular14,
          // )
        ],
      ),
    ),
  );
  // return AppBar(
  //   elevation: 0,
  //   leading: isBack == true
  //       ? GestureDetector(
  //           onTap: () {
  //             Get.back();
  //           },
  //           child: Container(
  //               height: 35,
  //               width: 35,
  //               decoration: BoxDecoration(border: Border.all(color: AppColor.cBorder),borderRadius: BorderRadius.circular(15)),
  //               child: Align(child: assetSvdImageWidget(image: DefaultImages.backIcn, width: 11, height: 10))))
  //       : SizedBox(),
  //   backgroundColor: AppColor.cBackGround,
  //   title: Text(
  //     title,
  //     style: pRegular14,
  //   ),
  //   actions: [
  //     Padding(
  //       padding: const EdgeInsets.all(15),
  //       child: Text(
  //         date,
  //         style: pRegular14,
  //       ),
  //     )
  //   ],
  // );
}
