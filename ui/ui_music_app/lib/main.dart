import 'package:flutter/material.dart';

import 'package:ui_music_app/screens/gallery_page.dart';
// import 'package:ui_music_app/screens/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GalleryScreen(),
    );
  }
}
