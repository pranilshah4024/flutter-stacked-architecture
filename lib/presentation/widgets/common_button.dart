/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

class CommonAppButton extends StatelessWidget {
  final Function() onTap;
  final String title;
  final BoxDecoration? boxDecoration;
  final Color? backGroundColor;
  final Color? textColor;
  final double? normalFontSize;
  final double? height;
  final double? radius;
  final FontWeight? fontWeight;

  const CommonAppButton({
    super.key,
    required this.onTap,
    required this.title,
    this.boxDecoration,
    this.backGroundColor = AppColors.primaryColor,
    this.textColor = AppColors.white,
    this.normalFontSize = 18,
    this.height,
    this.radius,
    this.fontWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.relativeHeight(height ?? 6.66),
      decoration: boxDecoration ??
          BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.circular(radius ?? 15),
          ),
      alignment: Alignment.center,
      child: CommonTextWidget(
        text: title,
        color: textColor,
        fontWeight: fontWeight,
        fontSize: normalFontSize,
      )
    ).addGestureTap(onTap: onTap);
  }
}
