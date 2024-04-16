import 'package:flutter/material.dart';

class DailyFlash122 extends StatefulWidget {
  const DailyFlash122({super.key});

  @override
  State<DailyFlash122> createState() => _DailyFlash122State();
}

class _DailyFlash122State extends State<DailyFlash122> {
  List weekdays = [];

  var textcontroller = TextEditingController();

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextField(
                  controller: textcontroller,
                  onSubmitted: (val) {
                    setState(() {
                      weekdays.add(textcontroller.text.toString());
                      textcontroller.clear();
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Enter Weekday",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(weekdays.toString())
            ],
          ),
        ),
      ),
    );
  }
}
