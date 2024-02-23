import 'package:flutter/material.dart';

class IndianFlag extends StatelessWidget {
  const IndianFlag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Indian Flag',
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange,
              Colors.white,
              Colors.green,
            ],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 590,
              width: 20,
              color: Colors.grey,
            ),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 300,
                  color: Colors.orange,
                ),
                Container(
                  height: 80,
                  width: 300,
                  color: Colors.white,
                  child: Center(
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/768px-Ashoka_Chakra.svg.png",
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 300,
                  color: Colors.green,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
