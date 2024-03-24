/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';
import 'package:my_profile/view_models/user/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      onViewModelReady: (model) => model.onInit(),
      builder: (context, model, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            SizeConfig().init(context, constraints);

            return Scaffold(
              backgroundColor: AppColors.primaryBackGroundColor,
              appBar: const CustomAppBar(
                title: "Login",
              ),
              body: CentralLoader(
                centralViewState: model.viewState,
                baseChild: _getBody(context, model),
              ),
            );
          },
        );
      },
    );
  }

  Widget _getBody(BuildContext ctx, LoginViewModel model) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.relativeWidth(5.87)),
      children: [
        SizeConfig.verticalSpacer(6),
        Icon(
          Icons.supervised_user_circle_outlined,
          size: SizeConfig.relativeSize(50),
        ),
        CommonTextWidget(
          text: S.current.my_profile,
          fontSize: 22,
          textAlign: TextAlign.center,
          color: AppColors.black,
          fontWeight: FontWeight.w600,
        ),
        SizeConfig.verticalSpacer(6),
        CommonTextFiled(
          controller: model.emailController,
          hintText: S.current.enter_email,
          onChanged: (String value) {},
          onEditingComplete: () {},
          onSubmitted: (String value) {
            model.unFocus();
          },
          maxLines: 1,
        ),
        SizeConfig.verticalSpacer(1.5),
        CommonTextFiled(
          controller: model.passwordController,
          hintText: S.current.enter_pwd,
          obscureText: model.isPassVisibility,
          onChanged: (String value) {},
          onEditingComplete: () {},
          onSubmitted: (String value) {
            model.unFocus();
          },
          maxLines: 1,
          suffixWidget: Padding(
            padding: EdgeInsets.only(right: SizeConfig.relativeWidth(5)),
            child: Icon(
              !model.isPassVisibility ?Icons.visibility_off_outlined:Icons.remove_red_eye_outlined,
              color: AppColors.primaryColor,
              size: SizeConfig.relativeSize(12),
            ),
          ).addGestureTap(onTap: model.onTapPasswordVisibility),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.relativeHeight(1.00),
            bottom: SizeConfig.relativeHeight(1.00),
          ),
          child: Row(
            children: [
              Checkbox(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: AppColors.secondaryColor,
                value: model.isRememberMe,
                onChanged: model.rememberMe,
                splashRadius: 0,
              ),
              SizeConfig.horizontalSpacer(1.33),
              CommonTextWidget(
                text: S.current.remember_me,
                color: AppColors.primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        CommonAppButton(
          title: S.current.login,
          onTap: model.onTapLogin,
        )
      ],
    );
  }
}
