import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'login_and_registration_logic.dart';
import 'login_and_registration_page/login_and_registration_page.dart';

class LoginAndRegistrationViewPage extends StatelessWidget {
  const LoginAndRegistrationViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<LoginAndRegistrationLogic>();
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => ScreenTypeLayout.builder(
          mobile: (context) => const LoginAndRegistrationPage(),
          tablet: (context) => const LoginAndRegistrationPage(),
          desktop: (context) => const LoginAndRegistrationPage(),
        )
    );
  }
}
