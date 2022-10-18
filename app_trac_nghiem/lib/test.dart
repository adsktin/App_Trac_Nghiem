// // main.dart
// import 'package:flutter/material.dart';
// import 'dart:async';

// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   State<Test> createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   static int _count = 10;
//   bool _isSelected = false;
//   @override
//   void initState() {
//     super.initState();
//     Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (_count > 0) {
//         setState(() {
//           _count--;
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kindacode.com'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             Text(
//               _count.toString(),
//               style: const TextStyle(fontSize: 30),
//             ),
//             ChoiceChip(
//               selectedColor: Colors.amber,
//               label: Text('A: Con Gà'),
//               selected: _isSelected,
//               onSelected: (newState) {
//                 setState(() {
//                   _isSelected = newState;
//                 });
//               },
//               // avatar: Image.asset(
//               //   'assets/images/yone_hoalinh.png',
//               //   width: 100,
//               //   height: 100,
//               // ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  TestState createState() => TestState();
}

class TestState extends State<Test> with TickerProviderStateMixin {
  int _selectedIndex = 1;
  final List<String> _options = ['Woolha', 'Flutter', 'Dart'];

  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: const TextStyle(color: Colors.white)),
        avatar: const FlutterLogo(),
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: choiceChip));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.vertical,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Woolha.com Flutter Tutorial'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: _buildChips(),
            ),
          ],
        ),
      ),
    );
  }
}
