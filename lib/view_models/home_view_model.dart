/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';
import 'package:my_profile/presentation/widgets/confirmation_dialog_widget.dart';

class HomeViewModel extends BaseModel{
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  void onTapLogout(){
    showDialog(
      context: navigationService.navigationKey.currentContext!,
      barrierDismissible: false,
      builder: (context) {
        return ConfirmationDialogWidget(
          title: S.current.confirmation,
          message: S.current.logout_confirmation_message,
          onTapPositive: () {
            SharedPref.putBool(PrefKeys.isLogin, false);
            redirectWithClearBackStack(RouteNames.loginViewRoute);
          },
          onTapNegative: () {

          },
          positiveText: S.current.logout,
          negativeText: S.current.cancel,
        );
      },
    );
    // redirectWithClearBackStack(RoutePaths.signInViewRoute);
  }

  void onTapEdit(){
      navigateTo(RouteNames.editProfileRoute);
  }


}