import 'dart:convert';
import 'package:app_trac_nghiem/models/auth_model.dart';
import 'package:app_trac_nghiem/models/error_model.dart';
import 'package:app_trac_nghiem/models/user_model.dart';
import 'package:app_trac_nghiem/routes/url.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static Future<List> loginEmailandPassword(
      String email, String password) async {
    try {
      var response = await http
          .post(Uri.parse(AppUrl.login),
              headers: <String, String>{
                'Content-Type': 'application/json; charset=UTF-8'
              },
              body: jsonEncode(
                  <String, String>{"email": email, "password": password}))
          .timeout(const Duration(seconds: 25));
      if (response.statusCode == 200) {
        var json = response.body;
        var authRespo = loginRespFromJson(json);
        // ignore: unnecessary_null_comparison
        if (authRespo != null) {
          return [authRespo.accessToken, ""];
        } else {
          return ["", "Unknown Error"];
        }
      } else {
        var json = response.body;
        var errorResp = errorRespFromJson(json);
        // ignore: unnecessary_null_comparison
        if (errorResp == null) {
          return ["", "Unknown Error"];
        } else {
          return ["", errorResp.error];
        }
      }
    } catch (e) {
      return ["", "Kết nối thất bại!"];
    }
  }

  static Future<List> registerEmailandPassword(
      String name, String email, String password) async {
    var response = await http.post(Uri.parse(AppUrl.register),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, String>{
          'name': name,
          'email': email,
          'password': password
        }));
    if (response.statusCode == 200) {
      return ["", ""];
    } else {
      return ["error", "Đăng ký thất bại, vui lòng thử lại sau!"];
    }
  }

  static Future<User> getUser(String token) async {
    try {
      var response = await http.get(Uri.parse(AppUrl.getUser), headers: {
        'Content-Type': 'charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        "Connection": "Keep-Alive",
        "Keep-Alive": "timeout=5, max=1000"
      });

      if (response.statusCode == 200) {
        return User.fromJson(jsonDecode(response.body));
      } else {
        return User.fromJson(jsonDecode(response.body));
      }
    } catch (e) {
      return jsonDecode(e.toString());
    }
  }

  static Future<bool> logout() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString("token");

      var response = await http.post(Uri.parse(AppUrl.logout), headers: {
        'Content-Type': 'charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
        "Connection": "Keep-Alive",
        "Keep-Alive": "timeout=5, max=1000"
      });

      if (response.statusCode == 200) {
        print(response);
        await prefs.remove('token');
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
