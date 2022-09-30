import 'package:flutter/material.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:flutter_signin_button/button_view.dart';

class Firstscreen extends StatefulWidget {
  const Firstscreen({super.key});

  @override
  State<Firstscreen> createState() => _FirstscreenState();
}

Text _nameapp = const Text(
  'Trắc Nghiệm Nhanh',
  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
);

class _FirstscreenState extends State<Firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/monkeylogo.png'),
            _nameapp,
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
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
                  'Đăng Nhập',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
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
                  'Đăng Ký',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
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
                    icon:
                        Ink(child: Image.asset('assets/images/google48_.png')),
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
          ],
        ),
      ),
    );
  }
}
