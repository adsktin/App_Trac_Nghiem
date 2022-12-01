import 'package:app_trac_nghiem/views/auth/login_screen.dart';
import 'package:app_trac_nghiem/views/auth/register_screen.dart';
import 'package:app_trac_nghiem/views/home/home.dart';
import 'package:app_trac_nghiem/views/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const splash = Routes.splash;
  static const login = Routes.login;
  static const register = Routes.register;
  static const home = Routes.home;
  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const Loading(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(
        isScreen: false,
      ),
    ),
    GetPage(
      name: Routes.register,
      page: () => const RegisterScreen(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const Home(),
    ),
  ];
}

class Routes {
  static const splash = '/splash';
  static const register = '/register';
  static const login = '/login';
  static const home = '/home';
}
