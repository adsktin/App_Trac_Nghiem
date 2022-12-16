class Answers {
  int? id;
  String? answercontent;
  int? answerbool;
  int? questionId;

  Answers({this.id, this.answercontent, this.answerbool, this.questionId});

  Answers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    answercontent = json['answercontent'];
    answerbool = json['answerbool'];
    questionId = json['question_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['answercontent'] = answercontent;
    data['answerbool'] = answerbool;
    data['question_id'] = questionId;
    return data;
  }
}
