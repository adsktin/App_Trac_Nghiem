import 'package:app_trac_nghiem/models/news_model.dart';
import 'package:app_trac_nghiem/routes/url.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsService {
  static Future<List<News>> fetchNews() async {
    var response = await http.get(Uri.parse(AppUrl.news));
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<News>((json) => News.fromJson(json)).toList();
    } else {
      return jsonDecode(response.body);
    }
  }
}
