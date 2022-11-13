import 'package:app_trac_nghiem/logic/bindings/login_binding.dart';
import 'package:app_trac_nghiem/logic/bindings/register_binding.dart';
import 'package:app_trac_nghiem/views/auth/login_view.dart';
import 'package:app_trac_nghiem/views/auth/register_view.dart';
import 'package:app_trac_nghiem/views/home/home.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const register = Routes.register;
  static const login = Routes.login;
  static const home = Routes.home;
  static final routes = [
    GetPage(
        name: Routes.register,
        page: () => const RegisterView(),
        binding: RegisterBinding()),
    GetPage(
      name: Routes.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const Home(),
    ),
  ];
}

class Routes {
  static const register = '/register';
  static const login = '/login';
  static const home = '/home';
}
