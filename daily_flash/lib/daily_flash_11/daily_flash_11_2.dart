import 'package:flutter/material.dart';

class DailyFlash112 extends StatefulWidget {
  const DailyFlash112({super.key});

  @override
  State<DailyFlash112> createState() => _DailyFlash112State();
}

class _DailyFlash112State extends State<DailyFlash112> {
  bool isenabled = false;
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
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: TextField(
              onTap: () {
                setState(() {
                  isenabled = !isenabled;
                });
              },
              decoration: InputDecoration(
                suffixIcon: Row(
                  children: [
                    const Spacer(),
                    if (isenabled) const Icon(Icons.search),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.lock_outline),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
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
        ),
      ),
    );
  }
}
