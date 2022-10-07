//import 'package:app_trac_nghiem/history.dart';
//import 'package:app_trac_nghiem/type_questions.dart';
import 'package:app_trac_nghiem/history.dart';
import 'package:app_trac_nghiem/type_questions.dart';
import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'login.dart';
import 'register.dart';
import 'home.dart';
import 'loading.dart';
import 'firstscreen.dart';
import 'play.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Home(),
        routes: {
          '/loading': (context) => const Loading(),
          '/firstscreen': (context) => const Firstscreen(),
          '/login': (context) => const Login(),
          '/register': (context) => const Register(),
          '/home': (context) => const Home(),
          '/play': (context) => const Play(),
        });
  }
}
