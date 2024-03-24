/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'dart:developer';
import 'package:my_profile/exports.dart';

class LogUtils {
  /// Special key to turn on logging for all levels ([value] = 0).
  static const int all = 0;

  /// Special key to turn off all logging ([value] = 2000).
  static const int off = 2000;

  /// Key for highly detailed tracing ([value] = 300).
  static const int finest = 300;

  /// Key for fairly detailed tracing ([value] = 400).
  static const int finer = 400;

  /// Key for tracing information ([value] = 500).
  static const int fine = 500;

  /// Key for static configuration messages ([value] = 700).
  static const int config = 700;

  /// Key for informational messages ([value] = 800).
  static const int info = 800;

  /// Key for potential problems ([value] = 900).
  static const int warning = 900;

  /// Key for serious failures ([value] = 1000).
  static const int severe = 1000;

  /// Key for extra debugging loudness ([value] = 1200).
  static const int shout = 1200;

  static void writeLog({
    required String message,
    required String tag,
    StackTrace? stackTrace,
    int level = all,
  }) {
    if (kDebugMode) {
      log(
        "<<< $message >>>",
        name: "### $tag ###",
        time: DateTime.now(),
        stackTrace: stackTrace,
        level: level,
        zone: Zone.current,
      );
    }
  }
}
