//import 'package:app_trac_nghiem/history.dart';
//import 'package:app_trac_nghiem/type_questions.dart';
import 'package:app_trac_nghiem/detail_news.dart';
import 'package:app_trac_nghiem/edit_info.dart';
import 'package:app_trac_nghiem/forgot_password.dart';
import 'package:app_trac_nghiem/history.dart';
import 'package:app_trac_nghiem/search_friend.dart';
import 'package:app_trac_nghiem/test.dart';
import 'package:app_trac_nghiem/type_questions.dart';
import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'login.dart';
import 'register.dart';
import 'home.dart';
import 'loading.dart';
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
          '/edit_info': (context) => const EditInfo(),
          '/forgot_password': (context) => const ForgotPassword(),
          '/detail': (context) => const Detail(),
        });
  }
}
