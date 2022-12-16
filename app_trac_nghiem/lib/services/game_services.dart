import 'dart:convert';
import 'package:app_trac_nghiem/controller/game_controller.dart';
import 'package:app_trac_nghiem/models/questions_model.dart';

import 'package:app_trac_nghiem/routes/url.dart';
import 'package:http/http.dart' as http;

class QuestionsService {
  static Future<List<Questions>> fetchQuestions() async {
    print(GameController.idtype);
    var response = await http.post(Uri.parse(AppUrl.questions),
    headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(<String, String>{
          'type_id': GameController.idtype.toString(),
        }));
    print("aasdasd"+response.body);

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Questions>((json) => Questions.fromJson(json)).toList();
    } else {
      return jsonDecode(response.body);
    }
  }
}
