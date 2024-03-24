/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/

import 'package:image_picker/image_picker.dart';
import 'package:my_profile/exports.dart';
import 'package:my_profile/presentation/widgets/confirmation_dialog_widget.dart';


class EditProfileViewModel extends BaseModel {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController skillsTxtController = TextEditingController();
  TextEditingController workExperienceController = TextEditingController();

  CandidateDataDTO profileData = CandidateDataDTO();


  bool isEditable = true;
  @override
  void onInit() {
    profileData = Provider.of<DataService>(
            navigationService.navigationKey.currentContext!,
            listen: false)
        .candidateData;
    nameController.text = profileData.name ?? "";
    emailController.text = profileData.email ?? "";
    workExperienceController.text = profileData.workExperience ?? "";
    skillsTxtController.text = profileData.skills ?? "";
    selectedImage =
        profileData.avatar!.isNotEmpty ? XFile(profileData.avatar!) : null;
    updateView();
    super.onInit();
  }

  void onTapSave() {
    updateView(state: CentralViewState.busy);
    Provider.of<DataService>(navigationService.navigationKey.currentContext!,
            listen: false)
        .updateData(CandidateDataDTO(
      name: nameController.text,
      email: emailController.text,
      skills: skillsTxtController.text,
      workExperience: workExperienceController.text,
      id: profileData.id,
      avatar: selectedImage != null ? selectedImage?.path : profileData.avatar,
    ));
    profileData = Provider.of<DataService>(
        navigationService.navigationKey.currentContext!,
        listen: false)
        .candidateData;
    showSnackBar(
        message: "Profile Updated Successfully", state: ToastStats.success);
    updateView(state: CentralViewState.idle);
  }

  void onTapBack() {
    if (profileData.name != nameController.text ||
        profileData.skills != skillsTxtController.text ||
        profileData.workExperience != workExperienceController.text ||
        profileData.email != emailController.text) {
      showDialog(
        context: navigationService.navigationKey.currentContext!,
        barrierDismissible: false,
        builder: (context) {
          return ConfirmationDialogWidget(
            title: S.current.confirmation,
            message: "Are you sure , you want to go back without saving?",
            onTapPositive: () {
              onTapSave();
              back();
            },
            onTapNegative: () {
              back();
            },
            positiveText: S.current.save,
            negativeText: S.current.cancel,
          );
        },
      );
    }else{
      back();
    }
  }

  final ImagePicker _picker = ImagePicker();
  XFile? selectedImage;

  /// image picker gallery
  Future<void> pickImageFromGallery() async {
    LogUtils.writeLog(message: "clicked", tag: "pickImageFromGallery");
    try {
      XFile? galleryImage = await _picker.pickImage(
        source: ImageSource.gallery,
      );
      if (galleryImage != null) {
        selectedImage = galleryImage;
        updateView();
      }
    } catch (error) {
      LogUtils.writeLog(message: error.toString(), tag: "pickImageFromGallery");
    }
  }

  void onTapEdit(){
    isEditable = !isEditable;
    updateView();
  }
}
