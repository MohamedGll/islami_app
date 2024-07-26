import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/models/hadeth_model.dart';

class AhadethProvider extends ChangeNotifier {
  List<HadethModel> allAhadeth = [];
  loadHadethFile() {
    rootBundle.loadString('assets/files/ahadeth.txt').then(
      (value) {
        List<String> hadethList = value.trim().split('#');
        for (int i = 0; i < hadethList.length; i++) {
          String oneHadeth = hadethList[i];
          List<String> hadethLines = oneHadeth.trim().split('\n');
          String title = hadethLines[0];
          hadethLines.removeAt(0);
          List<String> content = hadethLines;
          HadethModel hadethModel = HadethModel(title, content);
          allAhadeth.add(hadethModel);
          notifyListeners();
        }
      },
    );
  }
}
