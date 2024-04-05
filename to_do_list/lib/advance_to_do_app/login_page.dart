import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_list/advance_todoapp.dart';

class AdvLoginPage extends StatefulWidget {
  const AdvLoginPage({super.key});

  @override
  State<AdvLoginPage> createState() => _AdvLoginPageState();
}

class UserModel {
  String username;
  String password;

  UserModel({required this.username, required this.password});
}

class _AdvLoginPageState extends State<AdvLoginPage> {
  bool isobscure = true;
  String name = '';
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  List<UserModel> users = [
    UserModel(username: "Pooja", password: "pooja123"),
    UserModel(username: "Mayur", password: "mayur123"),
    UserModel(username: 'Manish', password: "manish123"),
    UserModel(username: "Dhanshree", password: "Dhanshree123"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
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
                  Image.network(
                      width: 500,
                      "https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg"),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Enter Login Details",
                    style: GoogleFonts.quicksand(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(128, 53, 197, 1),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Username";
                      }
                      return null;
                    },
                    controller: _usernameController,
                    cursorColor: const Color.fromRGBO(128, 53, 197, 1),
                    decoration: const InputDecoration(
                      label: Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(128, 53, 197, 1)),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color.fromRGBO(128, 53, 197, 1),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(128, 53, 197, 1), width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 53, 197, 1), width: 3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 53, 197, 1), width: 3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 53, 197, 1), width: 3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please Enter Username";
                      } else if (val.length < 6) {
                        return "Password Length should be > 6";
                      }
                      return null;
                    },
                    controller: _passwordController,
                    obscureText: isobscure,
                    obscuringCharacter: "*",
                    cursorColor: const Color.fromRGBO(128, 53, 197, 1),
                    decoration: InputDecoration(
                      label: const Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(128, 53, 197, 1),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromRGBO(128, 53, 197, 1),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isobscure = !isobscure;
                          });
                        },
                        icon: isobscure
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off_outlined),
                        color: const Color.fromRGBO(128, 53, 197, 1),
                      ),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(128, 53, 197, 1), width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 53, 197, 1), width: 3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 53, 197, 1), width: 3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      errorStyle: const TextStyle(color: Colors.red),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(128, 53, 197, 1), width: 3),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * .8,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(128, 53, 197, 1)),
                    child: TextButton(
                      onPressed: () async {
                        FocusScope.of(context).unfocus();
                        bool islogin = false;
                        bool isvalid = _globalKey.currentState!.validate();

                        void mainPage() {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return AdvanceToDoApplication(
                                  user: name,
                                );
                              },
                            ),
                          );
                        }

                        void showSnackbar() async {
                          if (islogin) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                backgroundColor: Colors.green,
                                content: Text("Login Successful..."),
                              ),
                            );
                            await Future.delayed(const Duration(seconds: 4));
                            mainPage();
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Login Failed..."),
                            ));
                          }
                        }

                        if (isvalid) {
                          for (var user in users) {
                            if (user.username == _usernameController.text &&
                                user.password == _passwordController.text) {
                              islogin = !islogin;
                              name = _usernameController.text;
                            }
                          }
                          showSnackbar();
                        }
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
