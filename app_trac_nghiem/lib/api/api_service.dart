// import 'package:app_trac_nghiem/models/login_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class APIService {
//   Future<LoginResponseModel> login(LoginResponseModel loginResponseModel) async {
//     String url = "https://reqres.in/api/login";

//     final response = await http.post(url, body: requestModel.toJson());
//     if (response.statusCode == 200 || response.statusCode == 400) {
//       return LoginResponseModel.fromJson(json.decode(response.body));
//     } 
//     else {
//       throw Exception('failed to load data');
//     }
//   }
// }