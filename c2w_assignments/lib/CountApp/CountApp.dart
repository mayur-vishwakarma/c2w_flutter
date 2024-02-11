import 'dart:math';

import 'package:flutter/material.dart';

class CountApp extends StatefulWidget {
  const CountApp({super.key});

  @override
  State<CountApp> createState() => _CountAppState();
}

class _CountAppState extends State<CountApp> {
  int pCount = 0;
  int aCount = 0;
  int sCount = 0;
  List<int> pList = [121, 564, 987, 797, 25, 35, 48, 464];
  List<int> aList = [28, 153, 123838];
  List<int> sList = [
    2,
    145,
    65,
    79432,
    5463,
  ];
  void countPalindrome() {
    for (int i in pList) {
      int temp = i;
      int rev = 0;
      for (; i != 0;) {
        int t = i % 10;
        rev = rev * 10 + t;
        i = i ~/ 10;
      }
      if (rev == temp) {
        pCount++;
      }
    }
  }

  void countArmstrong() {
    for (int i in aList) {
      int temp = i;
      int rev = 0;
      for (; i != 0;) {
        int t = i % 10;
        rev += pow(t, 3) as int;
        i = i ~/ 10;
      }
      if (rev == temp) {
        aCount++;
      }
    }
  }

  void countStrong() {
    for (int i in sList) {
      int temp = i;
      int sum = 0;
      for (; i != 0;) {
        int t = i % 10;
        int f = 1;
        for (int j = 1; j <= t; j++) {
          f = f * j;
        }
        sum = sum + (t * t * t);

        i = i ~/ 10;
      }
      if (sum == temp) {
        sCount++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Count App"),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text("Palindrome Number Count - $pCount"),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countPalindrome();
                });
              },
              child: const Text("Count Palindrome"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Armstrong Number Count - $aCount"),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countArmstrong();
                });
              },
              child: const Text("Count Armstrong"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Strong Number Count - $sCount"),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  countStrong();
                });
              },
              child: const Text("Count Strong"),
            )
          ],
        ),
      ),
    );
  }
}
