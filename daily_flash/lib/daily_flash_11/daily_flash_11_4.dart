import 'package:flutter/material.dart';

class DailyFlash114 extends StatefulWidget {
  const DailyFlash114({super.key});

  @override
  State<DailyFlash114> createState() => _DailyFlash114State();
}

class _DailyFlash114State extends State<DailyFlash114> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: nameController,
              maxLength: 20,
              onChanged: (val) {
                setState(() {});
              },
              decoration: InputDecoration(
                labelText: "Enter Your Name",
                counter: Text("${nameController.text.length}/20"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
