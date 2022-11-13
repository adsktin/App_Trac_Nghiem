// import 'package:app_trac_nghiem/login_test.dart';
// import 'package:app_trac_nghiem/views/home/detail_news.dart';
// import 'package:app_trac_nghiem/views/home/home.dart';
// import 'package:app_trac_nghiem/views/setting/edit_info.dart';
// import 'package:app_trac_nghiem/views/forgot_password.dart';
// import 'package:app_trac_nghiem/views/setting/history.dart';
// import 'package:app_trac_nghiem/views/setting/history_challenge.dart';
// import 'package:app_trac_nghiem/views/friend/notification.dart';
// import 'package:app_trac_nghiem/views/play/result.dart';
// import 'package:app_trac_nghiem/views/friend/search_friend.dart';
// import 'package:app_trac_nghiem/views/play/type_questions.dart';
// import 'package:app_trac_nghiem/test.dart';
// import 'package:flutter/material.dart';
// import 'views/firstscreen.dart';
// import 'views/login.dart';
// import 'views/register.dart';
// import 'views/loading.dart';
// import 'views/play/play.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: const Firstscreen(),
//         routes: {
//           '/loading': (context) => const Loading(),
//           '/firstscreen': (context) => const Firstscreen(),
//           '/login': (context) => const Login(),
//           '/register': (context) => const Register(),
//           '/home': (context) => const Home(),
//           '/play': (context) => const Play(),
//           '/edit_info': (context) => const EditInfo(),
//           '/forgot_password': (context) => const ForgotPassword(),
//           '/detail': (context) => const Detail(),
//           '/type_question': (context) => const TypeQuestions(),
//           '/search_friend': (context) => const SearchFriend(),
//           '/notification': (context) => const NotificationScreen(),
//           '/history': (context) => const History(),
//           '/historychallenge': (context) => const HistoryChallenge(),
//         });
//   }
//}
import 'package:app_trac_nghiem/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Login",
    initialRoute: AppRoutes.home,
    getPages: AppRoutes.routes,
    debugShowCheckedModeBanner: false,
  ));
}
