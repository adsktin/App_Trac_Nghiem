import 'dart:convert';

import 'package:app_trac_nghiem/models/types_model.dart';
import 'package:app_trac_nghiem/routes/url.dart';
import 'package:http/http.dart' as http;

class TypesService {
  static Future<List<Types>> fetchTypes() async {
    var response = await http.get(Uri.parse(AppUrl.types));
    print(response.body);
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Types>((json) => Types.fromJson(json)).toList();
    } else {
      return jsonDecode(response.body);
    }
  }

}
