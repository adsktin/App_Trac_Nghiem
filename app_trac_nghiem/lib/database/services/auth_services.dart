import 'dart:convert';
import 'package:app_trac_nghiem/database/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  static String baseApi = "http://192.168.1.15:8000/api";
  static var client = http.Client();

  static register({required name, required email, required password}) async {
    var response = await client.post(
      Uri.parse("$baseApi/register"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
          <String, String>{"name": name, "email": email, "password": password}),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      var stringObject = response.body;
      var user = userFromJson(stringObject);
      return user;
    }
  }

  static login({required email, required password}) async {
    var response = await client.post(
      Uri.parse("$baseApi/login"),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(<String, String>{"email": email, "password": password}),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      var stringObject = response.body;
      var user = userFromJson(stringObject);
      return user;
    } else {
      return null;
    }
  }

  // Future<List<Map>> Login() async {
  //   List<Map> items = [];
  //   http.Response response = await http.post(Uri.parse("$baseApi/login"));

  //   if (response.statusCode == 200) {
  //     String jsonString = response.body;
  //     items = jsonDecode(jsonString);
  //     //return items;
  //   }
  //   return items;
  // }

  // Future<Map> getLogin1(itemId) async {
  //   Map item = {};
  //   http.Response response = await http.post(Uri.parse("$baseApi/login/$itemId"));

  //   if (response.statusCode == 200) {
  //     String jsonString = response.body;
  //     item = jsonDecode(jsonString);
  //     //return items;
  //   }
  //   return item;
  // }
}
