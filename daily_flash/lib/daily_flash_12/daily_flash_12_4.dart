import 'package:flutter/material.dart';

class DailyFlash124 extends StatefulWidget {
  const DailyFlash124({super.key});

  @override
  State<DailyFlash124> createState() => _DailyFlash124State();
}

class StudModel {
  final String name;
  final String clg;
  StudModel({
    required this.name,
    required this.clg,
  });
}

class _DailyFlash124State extends State<DailyFlash124> {
  var nameController = TextEditingController();
  var collegeController = TextEditingController();
  final GlobalKey<FormState> userkey = GlobalKey<FormState>();

  List<StudModel> studList = [];
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
                  controller: nameController,
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
                  controller: collegeController,
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
                  var isvalid = userkey.currentState!.validate();
                  if (isvalid) {
                    studList.add(
                      StudModel(
                        name: nameController.text.toString(),
                        clg: collegeController.text.toString(),
                      ),
                    );
                  }
                  setState(() {});
                },
                child: const Text("Submit"),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: studList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Name: ${studList[index].name}"),
                            const SizedBox(
                              height: 5,
                            ),
                            Text("College: ${studList[index].clg}"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
