import 'package:get/get.dart';

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