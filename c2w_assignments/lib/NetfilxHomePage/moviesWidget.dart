import 'package:flutter/material.dart';

class MoviesWidget extends StatelessWidget {
  const MoviesWidget({super.key, required this.imgurl});

  final String imgurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(100))),
      padding: const EdgeInsets.all(8),
      height: 300,
      width: 200,
      child: Image.network(imgurl, fit: BoxFit.cover),
    );
  }
}
