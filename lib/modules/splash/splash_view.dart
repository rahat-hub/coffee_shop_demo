import 'package:coffee_shop_demo/modules/splash/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'splash_logic.dart';

class SplashViewPage extends StatelessWidget {
  const SplashViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => ScreenTypeLayout.builder(
          mobile: (context) => const SplashPage(),
          tablet: (context) => const SplashPage(),
          desktop: (context) => const SplashPage(),
        )
    );
  }
}
