/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

class ConfirmationDialogWidget extends StatelessWidget {
  final String title;
  final String message;
  final String positiveText;
  final String? negativeText;
  final Function() onTapPositive;
  final Function() onTapNegative;

  const ConfirmationDialogWidget({
    super.key,
    required this.title,
    required this.message,
    required this.onTapPositive,
    required this.onTapNegative,
    required this.positiveText,
    this.negativeText,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: AppColors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: SizeConfig.relativeHeight(2.5),
            horizontal: SizeConfig.relativeWidth(4.27)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CommonTextWidget(
              text: title,
              fontSize: 22,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w600,
            ),
            SizeConfig.verticalSpacer(3.69),
            CommonTextWidget(
              text: message,
              fontSize: 16,
              color: AppColors.labelBlack,
              overflow: TextOverflow.clip,
            ),
            SizeConfig.verticalSpacer(6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: SizeConfig.relativeWidth(33),
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.relativeHeight(1)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.white,
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  alignment: Alignment.center,
                  child: CommonTextWidget(
                    text: negativeText ?? "No",
                    fontSize: 14,
                    color: AppColors.labelBlack,
                  ),
                ).addGestureTap(onTap: onTapNegative),
                Container(
                  width: SizeConfig.relativeWidth(33),
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.relativeHeight(1)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.primaryColor,
                    border: Border.all(color: AppColors.primaryColor),
                  ),
                  alignment: Alignment.center,
                  child: CommonTextWidget(
                    text: positiveText,
                    fontSize: 14,
                    color: AppColors.white,
                  ),
                ).addGestureTap(onTap: onTapPositive),
              ],
            )
          ],
        ),
      ),
    );
  }
}
