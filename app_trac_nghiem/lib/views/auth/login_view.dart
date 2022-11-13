import 'package:app_trac_nghiem/logic/controllers/login_controller.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
              child: Form(
            key: controller.loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: controller.emailController,
                  validator: (v) {
                    return controller.validateEmail(v!);
                  },
                  onSaved: (v) {
                    controller.email = v!;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "email",
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: controller.passwordController,
                  validator: (v) {
                    return controller.validatePassword(v!);
                  },
                  onSaved: (v) {
                    controller.password = v!;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: "password",
                    prefixIcon: const Icon(Icons.password),
                  ),
                ),
                const SizedBox(height: 10),
                Obx(
                  () => controller.isLoading.value == true
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : const Text(''),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      controller.doLogin();
                    },
                    child: const Text("Login"))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
