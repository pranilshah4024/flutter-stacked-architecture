/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

class ProfileItemWidget extends StatelessWidget {
  final String? data;
  final IconData? icon;

  const ProfileItemWidget({
    Key? key,
    this.data,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.primaryColor,
          size: SizeConfig.setSp(16).toDouble(),
        ),
        SizeConfig.horizontalSpacer(2),
        CommonTextWidget(
          text: data ?? "",
          textAlign: TextAlign.center,
          color: AppColors.black,
        ),
      ],
    );
  }
}
