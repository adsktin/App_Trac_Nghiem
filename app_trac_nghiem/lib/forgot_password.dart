import 'package:app_trac_nghiem/color.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          backgroundColor: const Color.fromARGB(255, 110, 255, 120),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 150, bottom: 30),
                    child: Text(
                      'Quên Mật Khẩu',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 300, 0),
                    child: Text(
                      'Email',
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    width: 350,
                    margin: const EdgeInsets.only(bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: textfield,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'example@gmail.com',
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.alternate_email_outlined),
                        ),
                        filled: true,
                        fillColor: textfield,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 350,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: btncolor,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                          )),
                      onPressed: () {},
                      child: const Text(
                        'Gửi Thông Tin',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
