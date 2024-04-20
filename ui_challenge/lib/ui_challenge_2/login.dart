import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/ui_challenge_2/verificatin.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color.fromRGBO(255, 255, 255, 1),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 130,
                  child: Stack(
                    children: [
                      Positioned(
                        width: 130,
                        left: -49,
                        top: -10,
                        child: Container(
                          height: 130,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromRGBO(204, 211, 196, 1),
                                width: 1.5),
                          ),
                        ),
                      ),
                      Positioned(
                        width: 77,
                        left: 64,
                        top: 17,
                        child: Container(
                          height: 77,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromRGBO(204, 211, 196, 1),
                                width: 1.5),
                          ),
                        ),
                      ),
                      Positioned(
                        width: 51,
                        left: 110,
                        top: 64,
                        child: Container(
                          height: 51,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color.fromRGBO(204, 211, 196, 1),
                                width: 1.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Log in",
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  width: 320,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(204, 211, 196, 1),
                        ),
                      ),
                      hintText: "Mobile Number",
                      hintStyle: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      prefixIcon: const Icon(
                        Icons.phone,
                        size: 17,
                        color: Color.fromRGBO(164, 164, 164, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(124, 180, 70, 1),
                            Color.fromRGBO(62, 102, 24, 1),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 40,
                            color: Color.fromRGBO(0, 0, 0, 0.15),
                            offset: Offset(0, 20))
                      ]),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const VerificationPage();
                            },
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " Log in ",
                            style: GoogleFonts.rubik(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "asset/image/4.png",
                  height: 300,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
