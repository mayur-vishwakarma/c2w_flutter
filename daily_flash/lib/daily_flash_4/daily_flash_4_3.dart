import 'package:flutter/material.dart';

class DailyFlash43 extends StatelessWidget {
  const DailyFlash43({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Row(
          children: [
            Text("mayur"),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.edit)
          ],
        ),
      ),
    );
  }
}
