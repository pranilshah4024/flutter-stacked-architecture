/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';
import 'package:my_profile/presentation/widgets/home/profile_item_widget.dart';
import 'package:my_profile/view_models/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (model) => model.onInit(),
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: AppColors.primaryBackGroundColor,
          appBar: CustomAppBar(
            title: "Home",
            actions: [
              Padding(
                padding: EdgeInsets.only(right: SizeConfig.relativeWidth(5)),
                child: const Icon(Icons.logout).addGestureTap(
                  onTap: model.onTapLogout,
                ),
              )
            ],
          ),
          body: CentralLoader(
            centralViewState: model.viewState,
            baseChild: _getBody(context, model),
          ),
        );
      },
    );
  }

  Widget _getBody(BuildContext ctx, HomeViewModel model) {
    return Consumer<DataService>(
      builder: (context, service, child) {
        return ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.relativeWidth(5.87),
            vertical: SizeConfig.relativeHeight(2),
          ),
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withOpacity(.1),
                        spreadRadius: 5,
                        blurRadius: 10,
                      )
                    ],
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.relativeHeight(3),
                    horizontal: SizeConfig.relativeWidth(4),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: SizeConfig.relativeWidth(25),
                        width: SizeConfig.relativeWidth(25),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
                          image: DecorationImage(
                            image: FileImage(
                              File(service.candidateData.avatar!),
                            ),
                          ),
                        ),
                      ).visibility(
                          service.candidateData.avatar?.isNotEmpty ?? true),
                      Container(
                        height: SizeConfig.relativeWidth(15),
                        width: SizeConfig.relativeWidth(15),
                        decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: CommonTextWidget(
                          text: service.candidateData.name!.createAvatarName(),
                          color: AppColors.white,
                          fontSize: SizeConfig.relativeSize(12),
                        ),
                      ).visibility(
                          service.candidateData.avatar?.isEmpty ?? true),
                      SizeConfig.verticalSpacer(1),
                      CommonTextWidget(
                        text: service.candidateData.name ?? "",
                        fontWeight: FontWeight.w600,
                        textAlign: TextAlign.center,
                        fontSize: 16,
                      ),
                      SizeConfig.verticalSpacer(4),
                      ProfileItemWidget(
                        data: service.candidateData.email,
                        icon: Icons.email_outlined,
                      ),
                      SizeConfig.verticalSpacer(.5),
                      ProfileItemWidget(
                        data: service.candidateData.skills,
                        icon: Icons.sensor_occupied_rounded,
                      ),
                      SizeConfig.verticalSpacer(.5),
                      ProfileItemWidget(
                        data: "${service.candidateData.workExperience!} Years",
                        icon: Icons.cases,
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: SizeConfig.relativeWidth(4),
                  top: SizeConfig.relativeHeight(1.5),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.relativeWidth(1),
                        vertical: SizeConfig.relativeHeight(1)),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Icon(
                      Icons.edit,
                      color: AppColors.white,
                      size: SizeConfig.setSp(16).toDouble(),
                    ),
                  ).addGestureTap(onTap: model.onTapEdit),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
