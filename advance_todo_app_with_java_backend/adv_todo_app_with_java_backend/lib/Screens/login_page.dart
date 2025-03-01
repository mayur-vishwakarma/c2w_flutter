import 'package:adv_todo_app_with_java_backend/Screens/main_screen.dart';
import 'package:adv_todo_app_with_java_backend/models/user_model.dart';
import 'package:adv_todo_app_with_java_backend/Screens/resigter_user.dart';
import 'package:adv_todo_app_with_java_backend/widgets/custom_text_form_field.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvLoginPage extends StatefulWidget {
  const AdvLoginPage({super.key});

  @override
  State<AdvLoginPage> createState() => _AdvLoginPageState();
}

class _AdvLoginPageState extends State<AdvLoginPage> {
  bool isobscure = true;
  String name = '';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  List<UserModel> users = [
    UserModel(
        email: "Pooja", username: "Pooja", password: "pooja123", imgUrl: ""),
    UserModel(
        email: "Mayur", username: "Mayur", password: "mayur123", imgUrl: ""),
    UserModel(
        email: "Manish", username: 'Manish', password: "manish123", imgUrl: ""),
    UserModel(
        email: "Dhanshree",
        username: "Dhanshree",
        password: "Dhanshree123",
        imgUrl: ""),
  ];

  Future<void> login() async {
    FocusScope.of(context).unfocus();
    bool islogin = false;
    bool isvalid = _globalKey.currentState!.validate();

    void mainPage() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) {
            return MainScreen(
              username: name,
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
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text("Login Failed..."),
        ));
      }
    }

    if (isvalid) {
      for (var user in users) {
        if (user.email == _emailController.text &&
            user.password == _passwordController.text) {
          islogin = !islogin;
          name = user.username;
        }
      }
      showSnackbar();
    }
  }

  // void getUserDetai // Uri url = Uri.parse("http://192.168.0.100:8080/users");
  //   // dynamic response = await http.get(url);
  //   // var data = jsonDecode(response.body);
  //   // // User user = User.fromJson(data);
  //   // if (data != null) {
  //   //   for (var index in data) {
  //   //     userList.add(User.fromJson(index));
  //   //     print(User.fromJson(index).userName);
  //   //   }
  //   // }
  //   // setState(ls() {
  //  () {});
  // }
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
                  height: 20,
                ),
                Image.network(
                    width: 400,
                    "https://static.vecteezy.com/system/resources/previews/005/879/539/non_2x/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg"),
                const SizedBox(
                  height: 30,
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
                Customtextfield(
                  label: "Email",
                  isobscure: false,
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Email";
                    }
                    return null;
                  },
                  textEditingController: _emailController,
                ),
                const SizedBox(
                  height: 20,
                ),
                Customtextfield(
                  label: "Password",
                  isobscure: true,
                  obscuringCharacter: "*",
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Please Enter Password";
                    } else if (val.length < 6) {
                      return "Password Length should be > 6";
                    }
                    return null;
                  },
                  textEditingController: _passwordController,
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
                      await login();
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do not have account? ",
                      style: GoogleFonts.quicksand(
                          color: const Color.fromRGBO(128, 53, 197, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return const RegisterUser();
                            },
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
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
