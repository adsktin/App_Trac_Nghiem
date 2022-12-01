import 'package:app_trac_nghiem/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Trăc Nghiệm Nhanh",
    initialRoute: AppRoutes.login,
    getPages: AppRoutes.routes,
    debugShowCheckedModeBanner: false,
  ));
}

// void main() async {
//   // await ScreenUtil.ensureScreenSize();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Home(),
//       routes: {
//         LoginScreen.route: (context) => const LoginScreen(isScreen: false),
//         // RegisterScreen.route: (context) => const RegisterScreen(),
//         // '/main': (context) => const MainScreen(),
//       },
//     );
//   }
// }
