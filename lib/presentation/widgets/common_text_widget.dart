/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

class CommonTextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final String? fontFamily;
  final double? fontSize;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextStyle? textStyle;

  const CommonTextWidget(
      {super.key,
      required this.text,
      this.color,
      this.fontFamily,
      this.fontSize = 13,
      this.fontStyle,
      this.fontWeight,
      this.textAlign,
      this.overflow,
      this.maxLines,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            color: color ?? AppColors.primaryColor,
            fontFamily: fontFamily ?? GoogleFonts.publicSans().fontFamily,
            fontSize: SizeConfig.setSp(fontSize!).toDouble(),
            fontStyle: fontStyle,
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
