import 'package:app_trac_nghiem/views/auth/login_screen.dart';
import 'package:app_trac_nghiem/views/auth/register_screen.dart';
import 'package:app_trac_nghiem/views/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:flutter_signin_button/button_view.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key, required bool isScreen});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 110, 255, 120),
              Color.fromARGB(255, 104, 235, 255),
            ],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: ListView(
            children: [
              Image.asset(
                'assets/images/monkeylogo.png',
                //width: 200,
                height: 300,
              ),
              Column(children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Text(
                    'Trắc Nghiệm Nhanh',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: btncolor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        )),
                    onPressed: () {
                      // Get.to(const LoginScreen());
                      Get.to(() => const LoginScreen(
                            isScreen: false,
                          ));
                    },
                    child: const Text(
                      'Đăng Nhập',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: btncolor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        )),
                    onPressed: () {
                      // Get.to(const RegisterScreen());
                      Get.to(() => const RegisterScreen());
                    },
                    child: const Text(
                      'Đăng Ký',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: SizedBox(
                    width: 350,
                    child: Divider(
                      color: Colors.black,
                      height: 3,
                    ),
                  ),
                ),
                const Text('Hoặc'),
                SizedBox(
                  width: 200,
                  height: 100,
                  child: Row(
                    children: [
                      IconButton(
                        iconSize: 30,
                        hoverColor: Colors.grey[200],
                        icon: Ink(
                            child: Image.asset('assets/images/google48_.png')),
                        tooltip: 'Login with Google',
                        onPressed: () {},
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 100),
                      ),
                      IconButton(
                        iconSize: 35,
                        hoverColor: Colors.grey[200],
                        icon: Ink(
                          child: Image.asset('assets/images/facebook_48.png'),
                        ),
                        tooltip: 'Login with Facebook',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
