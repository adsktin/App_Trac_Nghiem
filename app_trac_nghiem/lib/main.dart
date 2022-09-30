import 'package:flutter/material.dart';
//import 'package:flutter_application_1/firstscreen.dart';
//import 'package:flutter_application_1/login.dart';
//import 'package:flutter_application_1/register.dart';
import 'home.dart';
//import 'loading.dart';
//import 'firstscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(    
//       body: Center(
//         child: Column(
//           children: [
//             Lottie.network(
//                 'https://assets6.lottiefiles.com/packages/lf20_q7uarxsb.json'),
//             Text(
//               'Loading...',
//               style: TextStyle(
//                 fontSize: 40,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
