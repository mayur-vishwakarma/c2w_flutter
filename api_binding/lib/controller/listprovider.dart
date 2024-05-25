import 'dart:convert';

import 'package:api_binding/models/emp_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListProvider with ChangeNotifier {
  List<Data> empData = [];

  void getData() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    http.Response response = await http.get(url);
    var responsedData = jsonDecode(response.body);
    EmpModel empdata = EmpModel(responsedData);
    empData = empdata.data!;
    notifyListeners();
  }
}
