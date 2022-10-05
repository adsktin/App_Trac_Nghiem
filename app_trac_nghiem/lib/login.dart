import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

bool isChecked = false;

class _LoginState extends State<Login> {
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
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: ListView(
            children: [
              Image.asset(
                'assets/images/monkeylogo.png',
                //width: 200,
                height: 300,
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Đăng Nhập',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ]),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 300, 0),
                    child: Text(
                      'Email',
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF6FF92)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'example@gmai.com',
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.alternate_email_outlined),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF6FF92),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 280, 0),
                    child: Text(
                      'Mật khẩu',
                      style: TextStyle(),
                    ),
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF6FF92)),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '...',
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.lock),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF6FF92),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 50, 10),
                    child: SizedBox(
                      width: 300,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              // checkColor: Colors.black,
                              value: true,
                              onChanged: (bool? value) => {
                                setState(() {
                                  isChecked = value!;
                                })
                              },
                            ),
                            const Text('Ghi nhớ đăng nhập'),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: SizedBox(
                      width: 350,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Colors.lightGreenAccent,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            )),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pushNamed('/home');
                        },
                        child: const Text(
                          'Đăng Nhập',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'Đăng ký',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text('Quên mật khẩu?',
                            style: TextStyle(color: Colors.blue)),
                      ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
