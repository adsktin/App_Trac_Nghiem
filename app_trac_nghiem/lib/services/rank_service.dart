import 'package:app_trac_nghiem/models/rank_model.dart';
import 'package:app_trac_nghiem/routes/url.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RankService {
  static Future<List<Ranks>> fetchRanks() async {
    var response = await http.get(Uri.parse(AppUrl.ranks));
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Ranks>((json) => Ranks.fromJson(json)).toList();
    } else {
      return jsonDecode(response.body);
    }
  }
}