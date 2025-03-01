import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_module/view/widgets/input_text_field.dart';
import 'package:login_module/view/widgets/submit_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.url});
  final String? url;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isobscure = true;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Form(
          key: _globalKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.black38,
                        width: 3,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignInside),
                  ),
                  child: widget.url == null
                      ? const Icon(Icons.person_2_outlined)
                      : Image.network(width: 500, widget.url!),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "Enter Login Details",
                  style: GoogleFonts.quicksand(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.purple.shade900,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                InputTextField(
                    controller: _usernameController,
                    themeColor: Colors.purple.shade900,
                    prefixIcon: Icons.person,
                    label: "Enter Email",
                    validate: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Username";
                      }
                      return null;
                    }),
                const SizedBox(
                  height: 20,
                ),
                InputTextField(
                  isobsure: isobscure,
                  obsureText: "*",
                  controller: _passwordController,
                  themeColor: Colors.purple.shade900,
                  prefixIcon: Icons.lock,
                  label: "Enter Password",
                  validate: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Username";
                    } else if (val.length < 6) {
                      return "Password Length should be > 6";
                    }
                    return null;
                  },
                ),
                SubmitButton(
                    onpress: () {},
                    buttonColor: Colors.purple.shade900,
                    buttonLabel: "Login",
                    labelColor: const Color.fromRGBO(255, 255, 255, 1))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
