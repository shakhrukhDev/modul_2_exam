import 'package:flutter/cupertino.dart';
import 'package:m2_exam/routes/app_routes.dart';
import 'package:m2_exam/screens/auth/login/pages/login_page.dart';
import 'package:m2_exam/screens/auth/regiester/pages/register_page.dart';
import 'package:m2_exam/screens/main/pages/home/pages/farm_page.dart';
import 'package:m2_exam/screens/main/pages/main_page.dart';
import 'package:m2_exam/screens/splash/pages/splash_page.dart';

class NameRoutes{
  NameRoutes._();

  static Map<String, WidgetBuilder> routes ={
    AppRoutes.initial: (_) => const SplashPage(),
    AppRoutes.registerPage: (_) => const RegisterPage(),
    AppRoutes.loginPage: (_) => const LoginPage(),
    AppRoutes.mainPage: (_) => const MainPage(),
    AppRoutes.farmPage: (_) => const FarmPage(),
  };
}