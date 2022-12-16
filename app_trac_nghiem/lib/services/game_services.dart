import 'dart:convert';
import 'package:app_trac_nghiem/controller/game_controller.dart';
import 'package:app_trac_nghiem/models/questions_model.dart';

import 'package:app_trac_nghiem/routes/url.dart';
import 'package:http/http.dart' as http;

class QuestionsService {
  static Future<List<Questions>> fetchQuestions() async {
    var response = await http.post(Uri.parse(AppUrl.questions),
        body: jsonEncode(<String, String>{
          'type_id': GameController.idtype.toString(),
        }));
    print(response.body);

    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Questions>((json) => Questions.fromJson(json)).toList();
    } else {
      return jsonDecode(response.body);
    }
  }
}
