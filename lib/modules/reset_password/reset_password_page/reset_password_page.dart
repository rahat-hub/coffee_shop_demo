

import 'package:coffee_shop_demo/modules/reset_password/reset_password_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../constant_data/constant_assets.dart';
import '../../../helper/validation_check_helper.dart';
import '../../../widgets/button.dart';

class ResetPasswordPage extends GetView<ResetPasswordLogic> {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {

    Get.find<ResetPasswordLogic>();

    return Obx(() {
      return controller.isLoading.isFalse
          ? Scaffold(
        backgroundColor: Colors.brown[600],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 48.0),
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
                          'Reset Password.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'email',
                          hintStyle: TextStyle(color: Colors.white54),
                          filled: true,
                          fillColor: Colors.white10,
                          prefixIcon: Icon(
                            Icons.email_sharp,
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a email';
                          }
                          return null;
                        },
                        onChanged: (val) {
                          ValidationCheckHelper.validateHelperEmail(value: val);
                        },
                      ),
                      const SizedBox(height: 16),
                      Buttons.loginAndRegistrationButton(
                          buttonName: 'Send Email',
                          onTap: () {

                          }
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )
          : SizedBox();
    });
  }
}
