
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


Text _textlogin = const Text(
  'Đăng Nhập',
  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
);
bool isChecked = false;

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            
            Image.asset('assets/images/monkeylogo.png'),
            _textlogin,
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
              padding: EdgeInsets.only(right: 230),
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
              padding: EdgeInsets.only(bottom: 5),
            ),
            SizedBox(
              width: 300,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                  'Đăng Nhập',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: const [
              Text(
                'Đăng ký',
                style: TextStyle(color: Colors.blue),
              ),
              Text('Quên mật khẩu?', style: TextStyle(color: Colors.blue)),
            ]),
          ],
        ),
      ),
    );
  }
}
