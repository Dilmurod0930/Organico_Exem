import 'package:flutter/material.dart';
import 'package:organico_exem_/Screen/Auth/Sign_In/otac_number.dart';
import 'package:organico_exem_/Screen/Auth/Sign_In/forgot_pass_page.dart';
import 'package:organico_exem_/Screen/Auth/Sign_Up/new_registration_page.dart';
import 'package:organico_exem_/Screen/Auth/Sign_In/reset_password_page.dart';
import 'package:organico_exem_/Screen/Auth/Sign_In/sign_in_page.dart';
import 'package:organico_exem_/Screen/Auth/Splash/splash_auth.dart';
import 'package:organico_exem_/Screen/Home/cart/cart_main_page.dart';
import 'package:organico_exem_/Screen/Home/cart/my_bag_cart_page.dart';
import 'package:organico_exem_/Screen/Home/cart/my_orders_cart_page.dart';
import 'package:organico_exem_/Screen/Home/home/view/categorya/fruits_home_category_pages.dart';
import 'package:organico_exem_/Screen/Home/home/view/categorya/meats_home_category_page.dart';
import 'package:organico_exem_/Screen/Home/home/view/categorya/vegerabls_home_category_page.dart';
import 'package:organico_exem_/Screen/Home/home/view/cupon_home_view_page.dart';
import 'package:organico_exem_/Screen/Home/main_navigator_page.dart';
import 'package:organico_exem_/Screen/Home/profil/notification/notfication_settings_profil.dart';
import 'package:organico_exem_/Screen/Home/profil/notification/notification_profil_page.dart';
import 'package:organico_exem_/Screen/Home/profil/pages/Chang_password/change_passworde_profil_page.dart';
import 'package:organico_exem_/Screen/Home/profil/pages/customer_servis_profil_page.dart';
import 'package:organico_exem_/Screen/Home/profil/pages/edit_profil/edit_profil_page.dart';
import 'package:organico_exem_/Screen/Home/profil/pages/my_addres_profil_page.dart';
import 'package:organico_exem_/Screen/Home/profil/pages/my_orders_profil_page.dart';
import 'package:organico_exem_/Screen/Home/profil/pages/payment/payment_mothos_Pages.dart';
import 'package:organico_exem_/Screen/Home/profil/pages/payment/payment_mothos_profil_page.dart';
import 'package:organico_exem_/Screen/Home/profil/profil_main_page.dart';

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
      case "/otac_number":
        return MaterialPageRoute(builder: (context) => OTACNummberPage());
      case "/main":
        return MaterialPageRoute(builder: (context) => MainNavigatorPage());
      case "/cupon":
        return MaterialPageRoute(builder: (context) => CuponHomePage());
      case "/vegetables":
        return MaterialPageRoute(
            builder: (context) => VegetablesCategoryPage());
      case "/fruit":
        return MaterialPageRoute(builder: (context) => FruitsCategoryPage());
      case "/meats":
        return MaterialPageRoute(builder: (context) => MeatsCategoryPage());
      case "/my_bag":
        return MaterialPageRoute(builder: (context) => CartMyBagPage());
      case "/cart":
        return MaterialPageRoute(builder: (context) => CartHomePage());
      case "/my_order":
        return MaterialPageRoute(builder: (context) => CartHomePage());
      case "/order":
        return MaterialPageRoute(builder: (context) => CartMyOrdersPage());
      case "/profil":
        return MaterialPageRoute(builder: (context) => MainProfilePage());
      case "/notifi":
        return MaterialPageRoute(
            builder: (context) => MainProfilNotificationPage());
      case "/notifi_setting":
        return MaterialPageRoute(
            builder: (context) => MainProfilNotficatonSettingsPage());
      case "/edit_profil":
        return MaterialPageRoute(builder: (context) => EditProfilePage());
      case "/profil_order":
        return MaterialPageRoute(builder: (context) => MyOrderProfilPage());
      case "/customer_password":
        return MaterialPageRoute(
            builder: (context) => CustomerServiceProfilPage());
      case "/my_adres":
        return MaterialPageRoute(builder: (context) => MyAddressProfilPage());
      case "/payment_methos":
        return MaterialPageRoute(
            builder: (context) => PaymentMethodProfilPage());
      case "/change_password":
        return MaterialPageRoute(
            builder: (context) => ChangePasswordProfilPage());
      case "/addMthos2":
        return MaterialPageRoute(
            builder: ((context) =>
                AddPaymentMethodPage2(forcontext: args as BuildContext)));
    }
  }
}
