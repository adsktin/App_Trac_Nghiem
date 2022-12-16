import 'package:app_trac_nghiem/models/questions_model.dart';

import 'package:app_trac_nghiem/services/game_services.dart';

import 'package:get/get.dart';

class QuestionsController extends GetxController {
  static var isLoading = false.obs;
  static var listtp = [].obs;
  static var item = 0;
  static var amountQuestion = 5;
  static var score = 0;
  static var point = 10;
  static var timeAnswer = 10;

  @override
  void onInit() {
    fetchDataQuestions();
    super.onInit();
  }

  static Future<List<Questions>> fetchDataQuestions() async {
    isLoading.value = false;
    try {
      var list = await QuestionsService.fetchQuestions();
      listtp.assignAll(list);
      print(listtp[0].questcontent);
      isLoading.value = true;
      return list;
    } finally {
      isLoading.value = true;
    }
  }

  static void nextQUestion() {
    if (item < amountQuestion) {
      print(['case 1', item]);
      item = item + 1;
    } else {
      item = item;
      print(['case 2', item]);
    }
  }

  static void answerQuestion(int isTrue) {
    if (isTrue == 1) {
      score = score + point;
      // print(['controller score', score]);
    } else {}
  }
}
