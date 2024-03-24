/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

class LoginViewModel extends BaseModel {
  LoginViewModel() {
    fetchSavedUser();
  }

  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  bool isRememberMe = false;
  bool isPassVisibility = true;

  @override
  void onInit() {
    super.onInit();
  }

  void onTapPasswordVisibility() {
    isPassVisibility = !isPassVisibility;
    updateView();
  }

  void onTapLogin() {
    if (emailController.text.trim().isEmpty) {
      logX(message: "Email Empty Error", tag: "emailValidation");
      showSnackBar(
          message: S.current.enter_empty_email_message,
          state: ToastStats.error);
      return;
    } else if (!emailController.text.trim().isValidEmail()) {
      logX(message: "Email Validation Error", tag: "emailValidation");
      showSnackBar(
          message: S.current.enter_valid_email, state: ToastStats.error);
      return;
    } else if (Provider.of<DataService>(
                navigationService.navigationKey.currentContext!,
                listen: false)
            .candidateData
            .email !=
        emailController.text.trim()) {
      logX(message: "Email Not Exists", tag: "emailValidation");
      showSnackBar(
          message: S.current.user_does_not_exist, state: ToastStats.error);
      return;
    } else if (passwordController.text.trim().isEmpty) {
      logX(message: "Password Empty Error", tag: "passwordValidation");

      showSnackBar(
        message: S.current.enter_pwd,
        state: ToastStats.error,
      );
      return;
    } else if (Provider.of<DataService>(
                navigationService.navigationKey.currentContext!,
                listen: false)
            .candidateData
            .name !=
        passwordController.text.trim()) {
      logX(message: "Password Validation Error", tag: "passwordValidation");
      showSnackBar(
        message: S.current.enter_valid_password,
        state: ToastStats.error,
        duration: const Duration(seconds: 3),
      );
      return;
    } else {
      if (isRememberMe) {
        SharedPref.putBool(PrefKeys.rememberMe, isRememberMe);
        SharedPref.putString(PrefKeys.email, emailController.text.trim());
        SharedPref.putString(PrefKeys.password, passwordController.text.trim());
      }
      redirectWithClearBackStack(RouteNames.homeViewRoute);
    }
  }

  void fetchSavedUser() {
    bool? isEmailExists = SharedPref.containsKey(PrefKeys.email) ?? false;
    bool? isPwdExists = SharedPref.containsKey(PrefKeys.password) ?? false;
    bool? isLoggedIn = SharedPref.containsKey(PrefKeys.isLogin) ?? false;
    bool? isRemember = SharedPref.containsKey(PrefKeys.rememberMe) ?? false;
    if (isEmailExists) {
      emailController.text = SharedPref.getString(PrefKeys.email) ?? "";
    }
    if (isPwdExists) {
      passwordController.text = SharedPref.getString(PrefKeys.password) ?? "";
    }
    if (isRemember) {
      isRememberMe = SharedPref.getBool(PrefKeys.rememberMe) ?? false;
    }
  }

  void rememberMe(bool? value) {
    isRememberMe = value!;
    updateView();
  }
}
