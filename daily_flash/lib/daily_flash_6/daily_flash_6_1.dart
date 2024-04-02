import 'package:flutter/material.dart';

class DailyFlash61 extends StatelessWidget {
  const DailyFlash61({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Daily Flash"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              fit: BoxFit.cover,
              height: 250,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJYqXs_eYTVeNtugtP2q7zV_ROewS7r5-Gkg&s'),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Pizza",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const Text(
              "description",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
