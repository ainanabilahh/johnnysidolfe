import 'package:stacked/stacked.dart';
import 'package:flutter_application_2/model/groups.dart';
import 'package:http/http.dart' as http;

class IdolModel extends BaseViewModel {

  List<Idol> group = [];

  getAllIdol() async {
    try {
      setBusy(true);
      group = [];
      // call api get
      final response = await http.get('http://192.168.1.101/johnnysidolbe/public/groups');

      List<dynamic> groupJson = idolFromJson(response.body);
      for (dynamic json in groupJson) {
        print('Json: $json');
        group.add(Idol.fromJson(json));
      }
      setBusy(false);
      notifyListeners();
    } catch (e) {
      print('Get All Idol $e');
      setBusy(false);
    }
  }
}
