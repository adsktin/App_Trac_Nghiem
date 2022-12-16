import 'package:app_trac_nghiem/models/questions_model.dart';

import 'package:app_trac_nghiem/services/game_services.dart';

import 'package:get/get.dart';

class QuestionsController extends GetxController {
  static var isLoading = false.obs;
  static var listtp = [].obs;

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
      print(listtp);
      isLoading.value = true;
      return list;
    } finally {
      isLoading.value = true;
    }
  }
}
