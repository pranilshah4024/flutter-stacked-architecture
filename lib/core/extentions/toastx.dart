
/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

extension ToastX on ToastStats{

  Color toastColor(){
    return switch (this) {
      ToastStats.info => Colors.yellow.shade800,
      ToastStats.error => AppColors.timeRedText,
      ToastStats.success => AppColors.timeGreenText,
      ToastStats.warning => Colors.blue,
    };
  }

}