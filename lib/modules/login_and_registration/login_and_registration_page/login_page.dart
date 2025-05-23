import 'package:coffee_shop_demo/modules/login_and_registration/login_and_registration_logic.dart';
import 'package:coffee_shop_demo/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/button.dart';

class LoginPage extends StatelessWidget {
  final LoginAndRegistrationLogic controller;

  const LoginPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: controller.formKey.putIfAbsent(
            'login',
            () => GlobalKey<FormState>(),
          ),
          child: Column(
            children: [
              // Username with validator
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.white54),
                  filled: true,
                  fillColor: Colors.white10,
                  prefixIcon: Icon(Icons.person, color: Colors.white),
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
        Buttons.normalTextButton(onTap: () {Get.toNamed(Routes.resetPassword);}, buttonText: 'Forgot password?'),
        const SizedBox(height: 16),
        Buttons.loginAndRegistrationButton(
          buttonName: 'Sign in',
          onTap: () {
            controller.formKey['login']?.currentState?.save();
            if (controller.formKey['login']?.currentState?.validate() ??
                false) {
              // Your action here
            }
          },
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
            Buttons.socialButton(
              assetPath: 'assets/gif/google_animation.json',
              onTap: () {
                controller.isLogin.value = false;
              },
            ),
            Buttons.socialButton(
              assetPath: 'assets/gif/apple_animation.json',
              onTap: () {
                controller.isLogin.value = false;
              },
            ),
            Buttons.socialButton(
              assetPath: 'assets/gif/facebook_animation.json',
              onTap: () {
                controller.isLogin.value = false;
              },
            ),
          ],
        ),
      ],
    );
  }
}
