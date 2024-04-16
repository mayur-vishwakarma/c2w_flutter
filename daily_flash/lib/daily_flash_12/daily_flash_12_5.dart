import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DailyFlash125 extends StatefulWidget {
  const DailyFlash125({super.key});

  @override
  State<DailyFlash125> createState() => _DailyFlash125State();
}

class _DailyFlash125State extends State<DailyFlash125> {
  DateTime? date;
  var cont = TextEditingController();

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
              controller: cont,
              readOnly: true,
              onTap: () async {
                var selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2025));

                String formattedDate = DateFormat.yMMMd().format(selectedDate!);
                setState(() {
                  cont.text = formattedDate;
                });
              },
              decoration: InputDecoration(
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
