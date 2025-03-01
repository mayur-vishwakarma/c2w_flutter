import 'dart:convert';

import 'package:demo_project/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<User> userList = [];

  void getData() async {
    Uri url = Uri.parse("http://192.168.0.100:8080/users");
    dynamic response = await http.get(url);
    var data = jsonDecode(response.body);
    // User user = User.fromJson(data);
    if (data != null) {
      for (var index in data) {
        userList.add(User.fromJson(index));
        print(User.fromJson(index).userName);
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: getData),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Text(userList[index].userName!),
              const SizedBox(
                width: 10,
              ),
            ],
          );
        },
      ),
    );
  }
}
