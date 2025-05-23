import 'package:coffee_shop_demo/modules/reset_password/reset_password_page/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'reset_password_logic.dart';

class ResetPasswordViewPage extends StatelessWidget {
  const ResetPasswordViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<ResetPasswordLogic>();
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => ScreenTypeLayout.builder(
          mobile: (context) => const ResetPasswordPage(),
          tablet: (context) => const ResetPasswordPage(),
          desktop: (context) => const ResetPasswordPage(),
        )
    );
  }
}
