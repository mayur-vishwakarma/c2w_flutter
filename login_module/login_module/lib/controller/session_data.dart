import 'package:shared_preferences/shared_preferences.dart';

class SessionData {
  static bool? isLogin;
  static String? userId;

  static Future<void> storeSessionData(
      {required bool islogin, required String userId}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool("isLogin", islogin);
    sharedPreferences.setString("userId", userId);
    getSessionData();
  }

  static Future<void> getSessionData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    isLogin = sharedPreferences.getBool("isLogin") ?? false;
    userId = sharedPreferences.getString("userId") ?? "";
  }
}
