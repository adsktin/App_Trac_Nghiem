import 'package:app_trac_nghiem/controller/game_controller.dart';
import 'package:app_trac_nghiem/models/types_model.dart';
import 'package:app_trac_nghiem/services/type_services.dart';
import 'package:get/get.dart';

class TypesController extends GetxController {
  static var isLoading = false.obs;
  static var listtp = [].obs;

  @override
  void onInit() {
    fetchDataTypes();
    super.onInit();
  }

  static Future<List<Types>> fetchDataTypes() async {
    isLoading.value = false;
    try {
      var list = await TypesService.fetchTypes();
      listtp.assignAll(list);
      isLoading.value = true;
      return list;
    } finally {
      isLoading.value = true;
    }
  }

  // static Future<Types> getTypesbyId() async {
  //   try {
  //     var tp = await TypesService.getTypesbyId(GameController.idTypes);
  //     return tp;
  //   } finally {}
  // }
}
