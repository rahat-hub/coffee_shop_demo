import 'package:coffee_shop_demo/modules/login_and_registration/login_and_registration_binding.dart';
import 'package:coffee_shop_demo/modules/login_and_registration/login_and_registration_view.dart';
import 'package:get/get.dart';

import '../modules/reset_password/reset_password_binding.dart';
import '../modules/reset_password/reset_password_view.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_view.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.splash;

  static final routes = [

    GetPage(
      name: Routes.splash,
      page: () => SplashViewPage(),
      binding: SplashBinding(),
    ),

    GetPage(
      name: Routes.loginAndRegistration,
      page: () => LoginAndRegistrationViewPage(),
      binding: LoginAndRegistrationBinding(),
    ),

    GetPage(
      name: Routes.resetPassword,
      page: () => ResetPasswordViewPage(),
      binding: ResetPasswordBinding(),
    ),

    // GetPage(
    //   name: Routes.frontPage,
    //   page: () => FrontPage(),
    //   binding: FrontPageBinding(),
    // ),
    //
    // GetPage(
    //   name: Routes.logInAndRegPage,
    //   page: () => LogInAndRegPage(),
    //   binding: LogInAndRegPageBinding(),
    // ),

  ];

}