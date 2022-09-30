

import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

Text _textRegister = const Text(
  'Đăng Ký',
  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
);

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: _textRegister,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 225),
              child: Text(
                'Họ và tên',
                style: TextStyle(),
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent),
              child: TextField(
                decoration: InputDecoration(
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 10),
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
              padding: EdgeInsets.only(bottom: 10),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                'Email',
                style: TextStyle(),
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent),
              child: TextField(
                decoration: InputDecoration(
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 10),
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
              padding: EdgeInsets.only(bottom: 10),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 225),
              child: Text(
                'Mật khẩu',
                style: TextStyle(),
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 10),
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
              padding: EdgeInsets.only(bottom: 10),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 165),
              child: Text(
                'Xác nhận mật khẩu',
                style: TextStyle(),
              ),
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amberAccent),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 10),
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
              padding: EdgeInsets.only(bottom: 20),
            ),
            SizedBox(
              width: 300,
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
                onPressed: () {},
                child: const Text(
                  'Đăng ký',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
