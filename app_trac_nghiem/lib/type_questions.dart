import 'package:flutter/material.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';
//import 'package:flutter_signin_button/button_view.dart';

class TypeQuestions extends StatefulWidget {
  const TypeQuestions({super.key});

  @override
  State<TypeQuestions> createState() => _TypeQuestionsState();
}

Text _nameapp = const Text(
  'Trắc Nghiệm Nhanh',
  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
);

class _TypeQuestionsState extends State<TypeQuestions> {
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
          ],
        ),
      ),
    );
  }
}
