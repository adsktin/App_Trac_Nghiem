

import 'package:app_trac_nghiem/database/services/auth_services.dart';
import 'package:app_trac_nghiem/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs;
  final registerFormKey = GlobalKey<FormState>();
  late TextEditingController nameController,
      emailController,
      passwordController;
  String name = '', email = '', password = '';
  final storage = const FlutterSecureStorage();

  @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    nameController.dispose();
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

  doRegister() async {
    bool isValidate = registerFormKey.currentState!.validate();

    if (isValidate) {
      isLoading(true);
      try {
        var data = AuthServices.register(
            name: nameController.text,
            email: emailController.text,
            password: passwordController.text);

        if (data != null) {
          //await storage.write(key: "data", value: data.toString());
          //await storage.write(key: "email", value: data.toString());
          //await storage.write(key: "password", value: data.toString());
          registerFormKey.currentState!.save();
          Get.toNamed(AppRoutes.home);
        } else {
          Get.snackbar("register", "problem in register");
        }
      } finally {
        isLoading(false);
      }
    }
  }
}
