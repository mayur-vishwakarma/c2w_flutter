import 'package:advance_todo_app_with_backend/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _ResgisterUserState();
}

class _ResgisterUserState extends State<RegisterUser> {
  bool isobscure = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    getuser();
  }

  void getuser() async {}

  Future<void> registerUser() async {
    FocusScope.of(context).unfocus();
    bool islogin = false;
    bool isvalid = _globalKey.currentState!.validate();

    void loginPage() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) {
            return const AdvLoginPage();
          },
        ),
      );
    }

    void showSnackbar() async {
      ScaffoldMessenger.of(context).clearSnackBars();
      if (islogin) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text("Registration Successful..."),
          ),
        );
        await Future.delayed(const Duration(seconds: 4));
        loginPage();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text("Registration Failed..."),
          ),
        );
      }
    }

    if (isvalid) {
      // for (var user in users) {
      //   if (user.email == _emailController.text &&
      //       user.password == _passwordController.text) {
      // islogin = !islogin;
      //   }
      // }
      showSnackbar();
    }
  }

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
                  height: 15,
                ),
                Image.network(
                    width: 300,
                    "https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg"),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter Registration Details",
                  style: GoogleFonts.quicksand(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(128, 53, 197, 1),
                  ),
                ),
                const SizedBox(
                  height: 20,
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
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color.fromRGBO(128, 53, 197, 1),
                    ),
                    label: Text(
                      "Username",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromRGBO(128, 53, 197, 1)),
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
                  height: 15,
                ),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Email";
                    }
                    return null;
                  },
                  controller: _emailController,
                  cursorColor: const Color.fromRGBO(128, 53, 197, 1),
                  decoration: const InputDecoration(
                    label: Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromRGBO(128, 53, 197, 1)),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
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
                  height: 15,
                ),
                TextFormField(
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Password";
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
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * .8,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromRGBO(128, 53, 197, 1)),
                  child: TextButton(
                    onPressed: () async {
                      await registerUser();
                    },
                    child: Text(
                      "Register",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have account? ",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(128, 53, 197, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacement(MaterialPageRoute(builder: (ctx) {
                          return const AdvLoginPage();
                        }));
                      },
                      child: Text(
                        "Sign In",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromARGB(255, 3, 92, 40),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
