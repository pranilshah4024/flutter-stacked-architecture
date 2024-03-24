
/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/
import 'package:my_profile/exports.dart';

class CandidateDataDTO {
  int? id;
  String? name;
  String? avatar;
  String? email;
  String? skills;
  String? workExperience;

  CandidateDataDTO({
    this.id,
    this.name,
    this.avatar,
    this.email,
    this.skills,
    this.workExperience,
  });

  CandidateDataDTO.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    name = json['name'];
    avatar = json['avatar'];
    email = json['email'];
    skills = json['skills'];
    workExperience = json['work_experience'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['avatar'] = avatar;
    data['email'] = email;
    data['skills'] = skills;
    data['work_experience'] = workExperience;
    return data;
  }

  @override
  toString() => jsonEncode(toJson());
  static List<CandidateDataDTO> fromJsonArray(List<dynamic> candidates) {
    List<CandidateDataDTO> list = candidates
        .map<CandidateDataDTO>((a) => CandidateDataDTO.fromJson(a))
        .toList();
    return list;
  }
}
