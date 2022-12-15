import 'package:app_trac_nghiem/controller/auth_controller.dart';
import 'package:app_trac_nghiem/views/auth/register_screen.dart';
import 'package:app_trac_nghiem/views/auth/forgot_password.dart';
import 'package:app_trac_nghiem/views/color.dart';
import 'package:app_trac_nghiem/views/home/home.dart';
import 'package:app_trac_nghiem/widgets/validate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required bool isScreen});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailTextController = TextEditingController(text: "");
  final _passwordTextController = TextEditingController(text: "");
  final AuthController controller = Get.put(AuthController());
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        buildTopBanner(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: _formKey,
            child: Container(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    controller: _emailTextController,
                    validator: (val) {
                      if (val!.trim().isEmpty) {
                        return 'Email không được bỏ trống!';
                      } else if (!val.isValidEmail) {
                        return 'Email không hợp lệ!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textfield,
                      prefixIcon: const Icon(Icons.person),
                      contentPadding: const EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Mật khẩu',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextFormField(
                    controller: _passwordTextController,
                    validator: (val) {
                      if (val!.trim().isEmpty) {
                        return 'Mật khẩu không được bỏ trống!';
                      }
                      return null;
                    },
                    obscureText: isObscureText,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textfield,
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: (() {
                          setState(() {});
                          isObscureText = !isObscureText;
                        }),
                        icon: isObscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                      contentPadding: const EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.amber,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: btncolor,
                  shape: const StadiumBorder(),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    String error = await controller.login(
                        _emailTextController.text,
                        _passwordTextController.text);
                    if (error != "") {
                      Get.defaultDialog(title: "Thông báo!", middleText: error);
                    } else {
                      Get.to(() => const Home());
                      Get.defaultDialog(
                          title: "Thông báo!",
                          middleText: 'Đăng nhập thành công!');   
                                              
                    }
                  } else {}
                },
                child: const Text(
                  'Đăng Nhập',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: InkWell(
            child: IconButton(
                onPressed: () {
                  _emailTextController.text = "user@gmail.com";
                  _passwordTextController.text = "123456";
                },
                icon: const Icon(Icons.ac_unit)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Get.to(const RegisterScreen());
                    Get.to(() => const RegisterScreen());
                  },
                  child: const Text('Đăng Ký'),
                ),
                TextButton(
                  onPressed: () {
                    // Get.to(const ForgotPassword());
                    Get.to(() => const ForgotPassword());
                  },
                  child: const Text('Quên mật khẩu'),
                ),
              ],
            )),
      ],
    ));
  }
}

Widget buildTopBanner() {
  return Container(
    height: 200,
    color: Colors.transparent,
    child: Stack(children: [
      Center(
        child: InkWell(
            onTap: () {}, child: Image.asset('assets/images/monkeylogo.png')),
      ),
      Positioned(
          child: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Get.back();
        },
      ))
    ]),
  );
}
