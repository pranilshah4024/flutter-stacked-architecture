/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';
import 'package:my_profile/presentation/views/edit_user_profile_view.dart';
import 'package:my_profile/presentation/views/home_view.dart';
import 'package:my_profile/presentation/views/login_view.dart';
import 'package:page_transition/page_transition.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {

  switch (settings.name) {
    case RouteNames.loginViewRoute:
      return _getPage(
        page: const LoginView(),
        settings: settings,
      );
    case RouteNames.homeViewRoute:
      return _getPage(
        page: const HomeView(),
        settings: settings,
      );
    case RouteNames.editProfileRoute:
      return _getPage(
        page: const EditUserProfileView(),
        settings: settings,
      );



    default:
      return _getPage(
        settings: settings,
        page: const Scaffold(
          body: Center(
            child: Text("Page Is Not Defined"),
          ),
        ),
      );
  }
}

PageTransition _getPage({
  required RouteSettings settings,
  Widget page = const SafeArea(
    top: true,
    child: Scaffold(
      body: Center(
        child: Text("Page Is Not Defined"),
      ),
    ),
  ),
  PageTransitionType? type,
}) {
  return PageTransition(
    child: page,
    settings: settings,
    type: type ?? PageTransitionType.rightToLeft,
    isIos: Platform.isIOS,
  );
}
