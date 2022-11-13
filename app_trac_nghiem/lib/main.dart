//import 'package:app_trac_nghiem/history.dart';
//import 'package:app_trac_nghiem/type_questions.dart';

import 'package:app_trac_nghiem/friend/friend_screen.dart';
import 'package:app_trac_nghiem/home/detail_news.dart';
import 'package:app_trac_nghiem/rank/rank_screen.dart';
import 'package:app_trac_nghiem/setting/edit_info.dart';
import 'package:app_trac_nghiem/forgot_password.dart';
import 'package:app_trac_nghiem/setting/history.dart';
import 'package:app_trac_nghiem/setting/history_challenge.dart';
import 'package:app_trac_nghiem/friend/notification.dart';
import 'package:app_trac_nghiem/play/result.dart';
import 'package:app_trac_nghiem/friend/search_friend.dart';
import 'package:app_trac_nghiem/play/type_questions.dart';
import 'package:app_trac_nghiem/test.dart';
import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'login.dart';
import 'register.dart';
import 'home.dart';
import 'loading.dart';
import 'play/play.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
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
          '/type_question': (context) => const TypeQuestions(),
          '/search_friend': (context) => const SearchFriend(),
          '/notification': (context) => const NotificationScreen(),
          '/history': (context) => const History(),
          '/historychallenge': (context) => const HistoryChallenge(),
        });
  }
}
