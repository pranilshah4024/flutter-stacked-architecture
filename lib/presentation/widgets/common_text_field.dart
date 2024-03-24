/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

class CommonTextFiled extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode? focusNode;
  final double? height;
  final double? width;
  final List<TextInputFormatter>? inputFormatters;
  final bool autofocus;
  final TextInputType? keyboardType;
  final int? maxLines;
  final bool readOnly;
  final bool obscureText;
  final TextInputAction? textInputAction;
  final Function(String) onChanged;
  final Function() onEditingComplete;
  final Function(String) onSubmitted;
  final String hintText;
  final Widget? prefixWidget;
  final int? maxLength;
  final Widget? suffixWidget;
  final Function()? onTap;
  final TextStyle? textStyle;
  final Color? txtColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? hintStyle;
  final Color? cursorColor;

  const CommonTextFiled({
    super.key,
    required this.controller,
    required this.onChanged,
    required this.onEditingComplete,
    required this.onSubmitted,
    required this.hintText,
    this.focusNode,
    this.height,
    this.width,
    this.inputFormatters,
    this.autofocus = false,
    this.keyboardType,
    this.maxLines,
    this.readOnly = false,
    this.obscureText = false,
    this.textInputAction,
    this.onTap,
    this.prefixWidget,
    this.suffixWidget,
    this.maxLength,
    this.textStyle,
    this.txtColor,
    this.fontSize,
    this.fontWeight,
    this.hintStyle,
    this.cursorColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      controller: controller,
      focusNode: focusNode,
      inputFormatters: inputFormatters,
      autofocus: autofocus,
      keyboardType: keyboardType,
      maxLines: maxLines,
      readOnly: readOnly,
      obscureText: obscureText,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onSubmitted: onSubmitted,
      textInputAction: textInputAction,
      cursorColor: cursorColor ?? AppColors.primaryColor,
      maxLength: maxLength,
      textCapitalization: TextCapitalization.none,
      style: textStyle ??
          TextStyle(
            color: txtColor ?? AppColors.black,
            fontSize: SizeConfig.setSp(fontSize ?? 13.0).toDouble(),
            fontWeight: fontWeight ?? FontWeight.normal,
          ),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor: AppColors.white,
        filled: true,
        contentPadding: EdgeInsets.only(
          right: SizeConfig.relativeWidth(5.87),
          left: SizeConfig.relativeWidth(5.87),
          bottom: SizeConfig.relativeHeight(1.85),
          top: SizeConfig.relativeHeight(2.09),
        ),
        isDense: true,
        hintText: hintText,
        hintStyle: hintStyle ??
            TextStyle(
              color: AppColors.primaryColor.withOpacity(0.4),
              fontSize: SizeConfig.setSp(16).toDouble(),
            ),
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        disabledBorder: outlineInputBorder(),
        errorBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        prefixIconConstraints: const BoxConstraints.tightFor(),
        prefixIcon: prefixWidget,
        suffixIconConstraints: const BoxConstraints.tightFor(),
        suffixIcon: suffixWidget,
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        color: AppColors.textFieldBorder,
      ),
    );
  }
}
