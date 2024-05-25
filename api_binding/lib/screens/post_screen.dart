import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API binding"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              postdata();
            },
            child: const Text(
              "Post Request",
            )),
      ),
    );
  }

  void postdata() async {
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/update/21");
    Map<String, String> mapdata = {
      'name': "Mayur Vishwakarma",
      'salary': '400000',
      'age': '40'
    };
    http.Response response = await http.put(
      url,
      body: mapdata,
    );
    log(response.body);
    log(response.statusCode.toString());
  }
}
