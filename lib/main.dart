import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'green_hornet.dart';


GetStorage? getStorage;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  getStorage = GetStorage();
  runApp( GreenHornet());
}
