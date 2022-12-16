import 'package:app_trac_nghiem/models/answers_model.dart';

class Questions {
  int? id;
  String? questcontent;
  int? typeId;
  List<Answers>? answers;

  Questions({this.id, this.questcontent, this.typeId, this.answers});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    questcontent = json['questcontent'];
    typeId = json['type_id'];
    if (json['answers'] != null) {
      answers = <Answers>[];
      json['answers'].forEach((v) {
        answers!.add(Answers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['questcontent'] = questcontent;
    data['type_id'] = typeId;
    if (answers != null) {
      data['answers'] = answers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
