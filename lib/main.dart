/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/

import 'package:get_it/get_it.dart';
import 'package:my_profile/app.dart';
import 'package:my_profile/exports.dart';
GetIt locator = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.getInstance();
  locator.registerLazySingleton<NavigationService>(() => NavigationService());
  /// <<<<<<<<<<<<<<<<<<<<<<< System Configurations >>>>>>>>>>>>>>>>>>>>>>>>>
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: AppColors.primaryBackGroundColor,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}
