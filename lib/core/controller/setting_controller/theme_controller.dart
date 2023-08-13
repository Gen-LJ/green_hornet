// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/theme_light/dark_theme.dart';
import '../../../config/theme_light/light_theme.dart';
import '../../../utils/colors.dart';
import '../../../utils/constant.dart';
import '../../../utils/prefer.dart';

class ThemeController extends GetxController {
  final scrollbarTheme = ScrollbarThemeData(
    thumbVisibility: MaterialStateProperty.all(true),
  );
  RxBool isDark = Prefs.getBool(AppConstant.isDarkUrl).obs;
  bool isDarkTheme = Prefs.getBool(AppConstant.isDarkUrl);

  ThemeData get theme => isDarkTheme
      ? ThemeData.dark().copyWith(
          scrollbarTheme: scrollbarTheme,
          primaryColor: AppColor.themeNavyBlueColor,
        )
      : ThemeData.light().copyWith(
          scrollbarTheme: scrollbarTheme,
          primaryColor: AppColor.themeNavyBlueColor,
        );

  void changeTheme(bool value) {
    Prefs.setBool(AppConstant.isDarkUrl, value);
    isDarkTheme = Prefs.getBool(AppConstant.isDarkUrl);
    print('isDarkTheme::: $isDarkTheme');

    if (isDarkTheme == false) {
      AppLightTheme.lightThemeColor();
      update();
    } else {
      AppDarkTheme.darkColor();
      update();
    }
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    changeTheme(isDarkTheme);
  }
}
