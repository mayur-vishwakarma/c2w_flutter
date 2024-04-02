import 'package:flutter/material.dart';

class DailyFlash72 extends StatelessWidget {
  const DailyFlash72({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            height: 65,
            width: 240,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Rating: 4.5",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
