/*

Copyright (C) 2024 Pranil Shah - All Rights Reserved
You can read LICENCE.md file for the reference

Email : pranilshah4024@gmail.com
Linkedin : https://www.linkedin.com/in/pranilshah4024/
Github : https://github.com/pranilshah4024
Medium : https://medium.com/@pranilshah4024

*/

import 'package:my_profile/exports.dart';

class DataService with ChangeNotifier {
  DataService() {
    bool? isDataExists = SharedPref.haveKey(PrefKeys.candidatesData);
    isDataExists ??= false;
    if (isDataExists) {
      fetchData();
    } else {
      insertData();
    }
  }

  CandidateDataDTO candidateData = CandidateDataDTO();

  Map rawData = {
    "id": 0,
    "name": "Pranil Shah",
    "avatar": "",
    "email": "pranilshah4024@gmail.com",
    "skills": "Flutter",
    "work_experience": "5"
  };

  void insertData() {
    candidateData = CandidateDataDTO.fromJson(rawData);
    SharedPref.putObject(PrefKeys.candidatesData, candidateData);
    notifyListeners();
  }



  void fetchData() {
    candidateData = SharedPref.getObj<CandidateDataDTO>(
      PrefKeys.candidatesData,
      (v) {
        candidateData = CandidateDataDTO.fromJson(v);
        notifyListeners();
        return CandidateDataDTO.fromJson(v);
      },
    )!;
    notifyListeners();
  }

  Future<bool> updateData(CandidateDataDTO newData) async {
    try {
      candidateData = newData;
      await SharedPref.putObject(PrefKeys.candidatesData, candidateData);
      fetchData();
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }
}
