import 'package:expense_manager/screens/login_screen.dart';
import 'package:expense_manager/widgets/login_button.dart';

import 'package:flutter/material.dart';
import 'package:expense_manager/widgets/custom_textfield.dart';

import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Image.asset(
                    'asset/image/2.png',
                    height: 60,
                    width: 70,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 15),
                  child: Text(
                    textAlign: TextAlign.left,
                    "Create your Account",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                  title: "Name",
                  validator: (value) {
                    if (value.isEmpty()) {
                      return "Please Enter Valid name...";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: "Username",
                  validator: (value) {
                    if (value.isEmpty()) {
                      return "Please Enter Valid Value...";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Password',
                  validator: (val) {
                    if (val.isEmpty() || val.length < 6) {
                      return "Enter Valid Passowrd";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  title: 'Confirm Password',
                  validator: (val) {
                    if (val.isEmpty() || val.length < 6) {
                      return "Enter Valid Passowrd";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                LoginButton(
                  buttonName: "Sign Up",
                  onpress: () {},
                ),
                const SizedBox(height: 110),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return const LoginScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign In ",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(14, 161, 125, 1),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
