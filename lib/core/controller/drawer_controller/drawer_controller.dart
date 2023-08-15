// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:green_hornet/ui/screen/home_screen/home_screen.dart';


import '../../../utils/images.dart';

class MyDrawerController extends GetxController {
  RxInt currantIndex = 0.obs;
  RxList drawerItem = [
    {"title": "Dashboard", "icon": DefaultImages.dashboardIcn,"function":(){Get.back();} },
    {"title": "Orders", "icon": DefaultImages.ordersIcn,"function": (){Get.to(()=>HomeScreen());}},
    {"title": "Products", "icon": DefaultImages.productIcn,"function":(){Get.to(()=> HomeScreen());}},
    {"title": "Categories", "icon": DefaultImages.categoriesIcn,"function":(){Get.to(()=> HomeScreen());}},
    {"title": "Statistics", "icon": DefaultImages.statisticIcn,"function":(){Get.to(()=>HomeScreen());} },
    {"title": "Plans", "icon": DefaultImages.planIcn,"function":(){Get.to(()=>HomeScreen());}},
    {"title": "Settings", "icon": DefaultImages.settingIcn,"function":(){Get.to(()=> HomeScreen());}},
    {"title": "Shipping", "icon": DefaultImages.shippingIcn,"function":(){Get.to(()=> HomeScreen());}},
    {"title": "Tax", "icon": DefaultImages.taxIcn,"function":(){Get.to(()=> HomeScreen());}},
    {"title": "Coupon", "icon": DefaultImages.couponIcn,"function":(){Get.to(()=> HomeScreen());}},
  ].obs;
}
