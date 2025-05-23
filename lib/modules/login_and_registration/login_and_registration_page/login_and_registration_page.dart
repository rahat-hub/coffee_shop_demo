import 'package:coffee_shop_demo/constant_data/constant_assets.dart';
import 'package:coffee_shop_demo/modules/login_and_registration/login_and_registration_page/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../login_and_registration_logic.dart';
import 'login_page.dart';

class LoginAndRegistrationPage extends GetView<LoginAndRegistrationLogic> {
  const LoginAndRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<LoginAndRegistrationLogic>();

    return Obx(() {
      return controller.isLoading.isFalse
          ? Scaffold(
            backgroundColor: Colors.brown[600],
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 48.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Lottie.asset(
                        ConstantAssets.loginAnimation,
                        width: Get.width,
                        height: 200.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Center(
                      child: const Text(
                        'Coffee isn’t just a drink\nit’s a hug in a mug.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Center(
                      child: const Text(
                        'welcome back we missed you',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    const SizedBox(height: 32),
                    controller.isLogin.value ? LoginPage(controller: controller) : RegistrationPage(controller: controller),
                  ],
                ),
              ),
            ),
          )
          : SizedBox();
    });
  }
}
