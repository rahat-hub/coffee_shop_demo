import 'package:coffee_shop_demo/constant_data/constant_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../widgets/button.dart';
import '../login_and_registration_logic.dart';

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
                    Form(
                      key: controller.formKeyUserName,
                      child: Column(
                        children: [
                          // Username with validator
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(color: Colors.white54),
                              filled: true,
                              fillColor: Colors.white10,
                              prefixIcon: Icon(
                                Icons.person,
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
                                return 'Please enter a username';
                              }
                              return null;
                            },
                            onChanged: (val) {},
                          ),

                          SizedBox(height: 16),

                          // Password with validator
                          TextFormField(
                            obscureText: controller.obscurePassword.value,
                            decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.white54),
                              filled: true,
                              fillColor: Colors.white10,
                              prefixIcon: Icon(Icons.lock, color: Colors.white),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  controller.obscurePassword.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.white,
                                ),
                                onPressed: controller.togglePasswordVisibility,
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
                                return 'Please enter a password';
                              }
                              return null;
                            },
                            onChanged: (val) {},
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.formKeyUserName.currentState?.save();
                          if (controller.formKeyUserName.currentState
                                  ?.validate() ??
                              false) {}
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          backgroundColor:
                              const LinearGradient(
                                        colors: [
                                          Color(0xFFDA44BB),
                                          Color(0xFF8921AA),
                                        ],
                                      ).createShader(
                                        Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                                      ) !=
                                      null
                                  ? null
                                  : Colors.purple,
                        ),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: const [
                        Expanded(child: Divider(color: Colors.white30)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.white30)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // socialButton('assets/icons/google.png'),
                        // socialButton('assets/icons/apple.png'),
                        // socialButton('assets/icons/facebook.png'),
                        Buttons.socialButton(assetPath: 'assets/gif/google_animation.json', onTap: () {}),
                        Buttons.socialButton(assetPath: 'assets/gif/apple_animation.json', onTap: () {}),
                        Buttons.socialButton(assetPath: 'assets/gif/facebook_animation.json', onTap: () {}),
                      ],
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
