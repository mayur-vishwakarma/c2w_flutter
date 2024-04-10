import 'package:final_todo_app/Screens/splash_screen.dart';
import 'package:final_todo_app/Screens/todo_screen.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

TextEditingController nameController = TextEditingController();

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  String? username;
  final GlobalKey<FormState> _userkey = GlobalKey<FormState>();
  void onsubmit() async {
    var pref = await SharedPreferences.getInstance();
    pref.setString(SplashScreen.prefkey, nameController.text.toString());
    var valid = _userkey.currentState!.validate();
    if (valid) {
      toMainPage();
    }
  }

  void toMainPage() {
    username = TextEditingController().text.toString();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (ctx) {
      return const AdvanceToDoApplication();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              "Welcome to Todey...",
              textAlign: TextAlign.center,
              style: GoogleFonts.dancingScript(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromRGBO(120, 53, 197, 1)),
            ),
            Container(
              height: 300,
              width: 300,
              padding: const EdgeInsets.all(30),
              child: const Image(
                image: AssetImage('asset/images/1.png'),
              ),
            ),
            Form(
              key: _userkey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  validator: (value) {
                    if (nameController.text.trim().isEmpty ||
                        nameController.text.trim().length <= 3) {
                      return "Please Enter valid Name";
                    }
                    return null;
                  },
                  controller: nameController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(120, 53, 197, 1), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(120, 53, 197, 1), width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "Enter Your Name",
                    labelStyle:
                        const TextStyle(color: Color.fromRGBO(120, 53, 197, 1)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width * .8,
              height: 60,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(120, 53, 197, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextButton(
                onPressed: () {
                  onsubmit();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: GoogleFonts.quicksand(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromRGBO(255, 255, 255, 1),
                      size: 25,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
