import 'dart:convert';

import 'package:stacked/stacked.dart';
import 'package:johnnysidolfe/model/idol.dart';
import 'package:http/http.dart' as http;

class IdolModel extends BaseViewModel {
  List<Idol> group = [];

  getAllIdol() async {
    try {
      setBusy(true);
      group = [];
      // call api get
      final response = await http.post(
          'http://192.168.1.103/johnnysidolbe/public/groups/create',
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            'name': 'Kanjani8',
            'url': 'images/kanjani8.jpg'
          }));

      List<dynamic> groupJson = idolFromJson(response.body);
      print(idolFromJson(response.body));
      print(groupJson);
      for (dynamic json in groupJson) {
        print('Json: $json');
        group.add(json);
      }
      setBusy(false);
      notifyListeners();
    } catch (e) {
      print('Get All Idol $e');
      setBusy(false);
    }
  }
}
