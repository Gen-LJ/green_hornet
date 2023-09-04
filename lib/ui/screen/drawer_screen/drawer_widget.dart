
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/images.dart';
import '../../../utils/text_style.dart';
import '../../widget/common_space_divider_widget.dart';
import '../../widget/icon_and_image.dart';
import 'drawer_screen.dart';

Widget buildAppTitleRow(Function() menuFun, String date,{String? title}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // GestureDetector(
          //   onTap: menuFun,
          //   child: assetSvdImageWidget(image: DefaultImages.menuIcn, height: 18, colorFilter: ColorFilter.mode(AppColor.cLabel, BlendMode.srcIn)),
          // ),
          IconButton(
            onPressed: menuFun,
            icon: assetSvdImageWidget(image: DefaultImages.menuIcn, height: 18, colorFilter: ColorFilter.mode(AppColor.cLabel, BlendMode.srcIn)),
          ),
          horizontalSpace(16),
          Text(
            title ?? '',
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ],
      ),
      Row(
        children: [
          Text(
            date,
            style: pSemiBold12,
          ),
          // Text(
          //   dateMonth,
          //   style: pRegular14,
          // ),
        ],
      )
    ],
  );
}

Widget drawerWidget({bool? isSelected, String? title, String? icon}) {
  return Card(
    shadowColor: AppColor.cFont,
    elevation: 12.41,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    child: Container(
      width: 75,
      height: 75,
      decoration: BoxDecoration(color: isSelected == true ? AppColor.themeGreenColor : AppColor.cBackGround, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          assetSvdImageWidget(
            image: icon,
            colorFilter: ColorFilter.mode(
              isSelected == true ? AppColor.cWhite : AppColor.cLabel,
              BlendMode.srcIn,
            ),
          ),
          verticalSpace(10),
          Text(
            title!,
            style: pSemiBold10.copyWith(
              color: isSelected == true ? AppColor.cWhite : AppColor.cLabel,
            ),
          ),
        ],
      ),
    ),
  );
}



void showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DrawerScreen();
    },
  );
}