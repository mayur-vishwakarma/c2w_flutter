//import 'package:daily_flash/daily_flash_1/daily_flash_1_1.dart';
//import 'package:daily_flash/daily_flash_1/daily_flash_1_2.dart';
//import 'package:daily_flash/daily_flash_1/daily_flash_1_3.dart';
//import 'package:daily_flash/daily_flash_1/daily_flash_1_4.dart';
//import 'package:daily_flash/daily_flash_1/daily_flash_1_5.dart';
//import 'package:daily_flash/daily_flash_2/daily_flash_2_1.dart';
//import 'package:daily_flash/daily_flash_2/daily_flash_2_2.dart';
//import 'package:daily_flash/daily_flash_2/daily_flash_2_3.dart';
//import 'package:daily_flash/daily_flash_2/daily_flash_2_4.dart';
import 'package:daily_flash/daily_flash_2/daily_flash_2_5.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DailyFlash25(),
    );
  }
}
