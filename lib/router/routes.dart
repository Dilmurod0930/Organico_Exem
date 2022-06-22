import 'package:flutter/material.dart';
import 'package:organico_exem_/Screen/Auth/Splash/splash_auth.dart';

class MyRoutes{
   static final MyRoutes _instanse = MyRoutes.init();
  static MyRoutes get instanse => MyRoutes._instanse;
  MyRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => SplashAuthPage());
      
    }
  }
}