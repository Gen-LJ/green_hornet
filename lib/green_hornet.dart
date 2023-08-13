import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:green_hornet/ui/screen/dashboard_manager_screen/dashboard_manager_screen.dart';

import 'core/controller/setting_controller/theme_controller.dart';

class GreenHornet extends StatelessWidget {
   GreenHornet({super.key});
  ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init : ThemeController(),
        builder: (themeController){
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            locale: Locale('en','US'),
            theme: themeController.theme,
            home: DashBoardManagerScreen()
          );
        });
}}
