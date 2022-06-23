import 'package:flutter/material.dart';
import 'package:organico_exem_/Screen/Auth/Sign_In/forgot_pass_page.dart';
import 'package:organico_exem_/Screen/Auth/Sign_Up/new_registration_page.dart';
import 'package:organico_exem_/Screen/Auth/Sign_In/reset_password_page.dart';
import 'package:organico_exem_/Screen/Auth/Sign_In/sign_in_page.dart';
import 'package:organico_exem_/Screen/Auth/Splash/splash_auth.dart';

class MyRoutes {
  static final MyRoutes _instanse = MyRoutes.init();
  static MyRoutes get instanse => MyRoutes._instanse;
  MyRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) => SplashAuthPage());
      case "/sing_in":
        return MaterialPageRoute(builder: (context) => SignInPageAuth());
      case "/forgot":
        return MaterialPageRoute(builder: (context) => ForgotPasswordPage());
      case "/reset_password":
        return MaterialPageRoute(builder: (context) => ResetPasswordPage());
        case "/sign_in":
        return MaterialPageRoute(builder: (context) => NewRegisrationPage());
    }
  }
}
