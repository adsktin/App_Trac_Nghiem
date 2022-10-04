import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 150),
                  child: Text(
                    'Đăng Ký',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 270, 0),
                  child: Text(
                    'Họ và tên',
                    style: TextStyle(),
                  ),
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amberAccent),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Nhập họ và tên...',
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(Icons.person),
                      ),
                      filled: true,
                      fillColor: Colors.amberAccent,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amberAccent),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'example@gmail.com',
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(Icons.alternate_email_outlined),
                      ),
                      filled: true,
                      fillColor: Colors.amberAccent,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 280, 0),
                  child: Text(
                    'Mật khẩu',
                    style: TextStyle(),
                  ),
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amberAccent),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '...',
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(Icons.lock),
                      ),
                      filled: true,
                      fillColor: Colors.amberAccent,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 210, 0),
                  child: Text(
                    'Xác nhận mật khẩu',
                    style: TextStyle(),
                  ),
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(bottom: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amberAccent),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '...',
                      icon: const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(Icons.lock),
                      ),
                      filled: true,
                      fillColor: Colors.amberAccent,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.lightGreenAccent,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        )),
                    onPressed: () {},
                    child: const Text(
                      'Đăng ký',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
