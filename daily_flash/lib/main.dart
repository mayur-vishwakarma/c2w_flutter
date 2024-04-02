// import 'package:daily_flash/daily_flash_1/daily_flash_1_1.dart';
// import 'package:daily_flash/daily_flash_1/daily_flash_1_2.dart';
// import 'package:daily_flash/daily_flash_1/daily_flash_1_3.dart';
// import 'package:daily_flash/daily_flash_1/daily_flash_1_4.dart';
// import 'package:daily_flash/daily_flash_1/daily_flash_1_5.dart';
// import 'package:daily_flash/daily_flash_2/daily_flash_2_1.dart';
// import 'package:daily_flash/daily_flash_2/daily_flash_2_2.dart';
// import 'package:daily_flash/daily_flash_2/daily_flash_2_3.dart';
// import 'package:daily_flash/daily_flash_2/daily_flash_2_4.dart';
// import 'package:daily_flash/daily_flash_2/daily_flash_2_5.dart';
// import 'package:daily_flash/daily_flash_3/daily_flash_3_1.dart';
// import 'package:daily_flash/daily_flash_3/daily_flash_3_2.dart';
// import 'package:daily_flash/daily_flash_3/daily_flash_3_3.dart';
// import 'package:daily_flash/daily_flash_3/daily_flash_3_4.dart';
// import 'package:daily_flash/daily_flash_3/daily_flash_3_5.dart';
// import 'package:daily_flash/daily_flash_4/daily_flash_4_1.dart';
// import 'package:daily_flash/daily_flash_4/daily_flash_4_2.dart';
// import 'package:daily_flash/daily_flash_4/daily_flash_4_3.dart';
// import 'package:daily_flash/daily_flash_4/daily_flash_4_4.dart';
// import 'package:daily_flash/daily_flash_4/daily_flash_4_5.dart';
// import 'package:daily_flash/daily_flash_5/daily_flash_5_1.dart';
// import 'package:daily_flash/daily_flash_5/daily_flash_5_2.dart';
// import 'package:daily_flash/daily_flash_5/daily_flash_5_3.dart';
// import 'package:daily_flash/daily_flash_5/daily_flash_5_4.dart';
//import 'package:daily_flash/daily_flash_5/daily_flash_5_5.dart';
import 'package:daily_flash/daily_flash_6/daily_flash_6_1.dart';
import 'package:daily_flash/daily_flash_6/daily_flash_6_2.dart';
import 'package:daily_flash/daily_flash_6/daily_flash_6_3.dart';
import 'package:daily_flash/daily_flash_6/daily_flash_6_4.dart';
import 'package:daily_flash/daily_flash_6/daily_flash_6_5.dart';
import 'package:daily_flash/daily_flash_7/daily_flash_7_1.dart';
import 'package:daily_flash/daily_flash_7/daily_flash_7_2.dart';
import 'package:daily_flash/daily_flash_7/daily_flash_7_3.dart';
import 'package:daily_flash/daily_flash_7/daily_flash_7_4.dart';
import 'package:daily_flash/daily_flash_7/daily_flash_7_5.dart';

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
      home: DailyFlash75(),
    );
  }
}
