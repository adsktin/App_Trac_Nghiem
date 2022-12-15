import 'package:app_trac_nghiem/controller/auth_controller.dart';
import 'package:app_trac_nghiem/views/auth/login_screen.dart';
import 'package:app_trac_nghiem/views/color.dart';
import 'package:app_trac_nghiem/widgets/validate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static String route = '/register';
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  final AuthController controller = Get.put(AuthController());
  bool isObscureText = true;
  bool isObscureTextconfirm = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        buildTopBanner(),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Form(
            key: formKey,
            child: Container(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Họ và tên',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextFormField(
                    controller: _nameController,
                    validator: (val) {
                      if (val!.trim().isEmpty) {
                        return 'Họ và tên không được bỏ trống!';
                      } else if (!val.isValidName) {
                        return 'Họ và tên không hợp lệ!';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.text,
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
                    'Email',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextFormField(
                    controller: _emailController,
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
                    controller: _passwordController,
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
                  const Text(
                    'Xác nhận mật khẩu',
                    style: TextStyle(fontSize: 15),
                  ),
                  TextFormField(
                    controller: _confirmPasswordController,
                    validator: (val) {
                      if (val!.trim().isEmpty) {
                        return 'Xác nhận mật khẩu không được bỏ trống!';
                      }
                      return null;
                    },
                    obscureText: isObscureTextconfirm,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: textfield,
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: (() {
                          setState(() {});
                          isObscureTextconfirm = !isObscureTextconfirm;
                        }),
                        icon: isObscureTextconfirm
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
                  if (formKey.currentState!.validate()) {
                    String message = await controller.register(
                        _nameController.text,
                        _emailController.text,
                        _passwordController.text);
                    if (message != "") {
                      Get.defaultDialog(
                          title: "Thông báo!", middleText: message);
                    } else {
                      Get.to(() => const LoginScreen(isScreen: false));
                    }
                  }
                },
                child: const Text(
                  'Đăng Ký',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                )),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('Bạn đã có tài khoản?'),
                TextButton(
                  onPressed: () {
                    Get.to(() => const LoginScreen(
                          isScreen: false,
                        ));
                  },
                  child: const Text('Đăng Nhập'),
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
        child: Image.asset('assets/images/monkeylogo.png'),
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
