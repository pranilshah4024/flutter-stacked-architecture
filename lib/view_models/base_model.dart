/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/core/extentions/toastx.dart';
import 'package:my_profile/exports.dart';

class BaseModel extends ChangeNotifier {
  /// call this function as the initial method of view model.
  @protected
  @mustCallSuper
  void onInit() {}

  /// it will dispose the attached view model from view & the associated disposable elements too.

  /// >>>>>>>>>>>>>>>>>>>>> Navigation >>>>>>>>>>>>>>>>>>>>>
  final NavigationService navigationService = NavigationService();

  void navigateTo(String routeName, {dynamic arguments}) {
    navigationService.next(routeName, arguments: arguments);
  }

  void redirectWithClearBackStack(String routeName, {dynamic arguments}) {
    navigationService.backAllAndNext(routeName, arguments: arguments);
  }

  Future<void> redirectToPageWithAwait(String routeName,
      {dynamic arguments}) async {
    await navigationService.next(routeName, arguments: arguments);
    return;
  }

  redirectWithPop(String routeName, {dynamic arguments}) {
    navigationService.backAndNext(routeName, arguments: arguments);
  }

  back() {
    navigationService.back();
  }

  /// <<<<<<<<<<<<<<<<<<<<<<< Navigation <<<<<<<<<<<<<<<<<<<<<<<

  /// >>>>>>>>>>>>>>>>>>>>> Handle ViewState >>>>>>>>>>>>>>>>>>>>>
  CentralViewState _viewState = CentralViewState.idle;

  CentralViewState get viewState => _viewState;

  void updateView({CentralViewState state = CentralViewState.idle}) {
    if (_viewState != state) _viewState = state;
    if (hasListeners) {
      notifyListeners();
    }
  }

  /// <<<<<<<<<<<<<<<<<<<<<<< Handle ViewState <<<<<<<<<<<<<<<<<<<<<<<
  /// >>>>>>>>>>>>>>>>>>>>> Toast >>>>>>>>>>>>>>>>>>>>>
  /// The function showToast displays a toast message with a default state of info.
  ///
  /// Args:
  ///   state [ToastStats] : The state parameter is an optional parameter of type
  /// ToastStats. It has a default value of [ToastStats.info]. Defaults to ToastStats
  void showSnackBar({
    ToastStats state = ToastStats.info,
    Duration? duration,
    required String message,
  }) {
    showToast(
      message,
      duration: duration ?? const Duration(milliseconds: 2000),
      position: ToastPosition.top,
      backgroundColor: state.toastColor(),
      radius: 15,
      margin: EdgeInsets.zero,
      textPadding: EdgeInsets.symmetric(
        horizontal: SizeConfig.relativeWidth(5),
        vertical: SizeConfig.relativeHeight(1),
      ),
      constraints: BoxConstraints(
        maxWidth: SizeConfig.relativeWidth(90),
      ),
      textStyle: const TextStyle(
        fontSize: 12,
        color: AppColors.white,
      ),
    );
  }

  /// <<<<<<<<<<<<<<<<<<<<<<< Toast <<<<<<<<<<<<<<<<<<<<<<<


  void unFocus(){
    FocusScope.of(navigationService.navigationKey.currentContext!).unfocus();

  }
  void logX({
    required String message,
    required String tag,
    StackTrace? stackTrace,
    int level = LogUtils.all,
  }) {
    LogUtils.writeLog(
        message: message, tag: tag, level: level, stackTrace: stackTrace);
  }
}
