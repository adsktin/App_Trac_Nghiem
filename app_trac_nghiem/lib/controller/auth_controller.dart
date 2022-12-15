import 'package:app_trac_nghiem/models/user_model.dart';
import 'package:app_trac_nghiem/services/auth_services.dart';
import 'package:app_trac_nghiem/views/choose_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  var loginProcess = false.obs;
  var registerProcess = false.obs;
  var error = "";
  var message = "";
  var logoutProcess = false.obs;

  Future<String> login(String email, String password) async {
    error = "";
    try {
      loginProcess(true);
      List loginResp = await AuthService.loginEmailandPassword(email, password);
      if (loginResp[0] != "") {
        //success
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("token", loginResp[0]);
      } else {
        error = loginResp[1];
      }
    } finally {
      loginProcess(false);
    }
    return error;
  }

  Future<String> register(String name, String email, String password) async {
    message = "";
    try {
      registerProcess(true);
      List register =
          await AuthService.registerEmailandPassword(name, email, password);
      if (register[0] != "") {
        //success
        message = register[1];
        print(message);
      } else {
        message = register[1];
        print(message);
      }
    } finally {
      registerProcess(false);
    }
    print(message);
    return message;
  }

  static Future<User> getDataUser(String token) async {
    User user = await AuthService.getUser(token);
    return user;
  }

  Future<bool> logOut() async {
    logoutProcess(false);
    try {
      final logout = await AuthService.logout();
      if (logout) {
        logoutProcess(true);
        final prefs = await SharedPreferences.getInstance();
         //prefs.remove();
        return logout;
      } else {
        return logout;
      }
    } finally {
      logoutProcess(true);
    }
  }
}
