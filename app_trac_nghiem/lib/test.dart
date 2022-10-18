// main.dart
import 'package:flutter/material.dart';
import 'dart:async';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  static int _count = 10;
  bool _isSelected = false;
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_count > 0) {
        setState(() {
          _count--;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _count.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            ChoiceChip(
              selectedColor: Colors.amber,
              label: Text('A: Con Gà'),
              selected: _isSelected,
              onSelected: (newState) {
                setState(() {
                  _isSelected = newState;
                });
              },
              // avatar: Image.asset(
              //   'assets/images/yone_hoalinh.png',
              //   width: 100,
              //   height: 100,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
