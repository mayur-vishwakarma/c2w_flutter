import 'package:flutter/material.dart';

class DailyFlash123 extends StatefulWidget {
  const DailyFlash123({super.key});

  @override
  State<DailyFlash123> createState() => _DailyFlash123State();
}

class _DailyFlash123State extends State<DailyFlash123> {
  var nameController = TextEditingController();
  var collegeController = TextEditingController();
  final GlobalKey<FormState> userkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daily flash"),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Form(
          key: userkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Ypur Name";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
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
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Your College Nmae";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your College",
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
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    userkey.currentState!.validate();
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
