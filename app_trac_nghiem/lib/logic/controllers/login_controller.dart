import 'package:app_trac_nghiem/database/services/auth_services.dart';
import 'package:app_trac_nghiem/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  final loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  String email = '', password = '';
  final storage = const FlutterSecureStorage();

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "this is wrong email";
    } else {
      return null;
    }
  }

  String? validatePassword(String value) {
    if (value.length <= 5) {
      return "this is wrong password";
    } else {
      return null;
    }
  }

  doLogin() async {
    bool isValidate = loginFormKey.currentState!.validate();

    if (isValidate) {
      isLoading(true);
      try {
        var data = AuthServices.login(
            email: emailController.text, password: passwordController.text);

        if (data != null) {
          await storage.write(key: "id", value: data.toString());
          await storage.write(key: "token", value: data.toString());
          loginFormKey.currentState!.save();
          Get.toNamed(AppRoutes.home);
        } else {
          Get.snackbar("login", "problem in login");
        }
      } finally {
        isLoading(false);
      }
    }
  }
}
