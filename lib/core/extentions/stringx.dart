
/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
extension StringX on String{

  String createAvatarName() {
    List<String>? name = split(" ");
    String firstName = name.isNotEmpty ? name[0] : this;
    String lastName = name.length >= 2 ? name[1] : "";
    String firstChar = firstName.split("").first;
    String lastChar = lastName.split("").first;
    return name.length >= 2 ? "$firstChar$lastChar" : firstName;
  }
}