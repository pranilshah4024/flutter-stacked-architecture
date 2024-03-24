
/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

extension WidgetX on Widget {
  Widget wrapContainer({
    EdgeInsets? padding,
    EdgeInsets? margin,
    Color color = Colors.transparent,
  }) {
    return Container(
      padding: padding,
      margin: margin,
      color: color,
      child: this,
    );
  }

  Widget wrapCenter() {
    return Center(
      child: this,
    );
  }

  Widget wrapPadding({
    EdgeInsets padding = const EdgeInsets.all(0),
  }) {
    return Padding(
      padding: padding,
      child: this,
    );
  }

  Widget addGestureTap({required Function() onTap}) {
    return InkWell(
      splashColor: AppColors.transparent,
      highlightColor: AppColors.transparent,
      focusColor: AppColors.transparent,
      onTap: onTap,
      child: this,
    );
  }

  Widget wrapPaddingAll({
    double padding = 0,
  }) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }

  Widget wrapPaddingHorizontal({
    double padding = 0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: this,
    );
  }

  Widget wrapPaddingVertical({double padding = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: padding),
      child: this,
    );
  }

  Widget wrapPaddingSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget clipRectAll(double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: this,
    );
  }

  Widget clipRectCustom(BorderRadius radius) {
    return ClipRRect(
      borderRadius: radius,
      child: this,
    );
  }


  Widget expand(int flex) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }

  Widget flexible(int flex, FlexFit flexFit) {
    return Flexible(
      flex: flex,
      fit: flexFit,
      child: this,
    );
  }

  Widget visibility(bool visible) {
    return Visibility(
      visible: visible,
      child: this,
    );
  }

  Widget offstage(bool visible) {
    return Offstage(
      offstage: visible,
      child: this,
    );
  }

  /// Widget to show exception
  Widget errorWidget(Object ex) => ErrorWidget(ex);
}
