import 'package:coffee_shop_demo/modules/login_and_registration/login_and_registration_logic.dart';
import 'package:flutter/material.dart';

import '../../../widgets/button.dart';

class RegistrationPage extends StatelessWidget {

  final LoginAndRegistrationLogic controller;
  const RegistrationPage({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: controller.formKey.putIfAbsent('registration', ()=> GlobalKey<FormState>()),
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
                  return controller.emailError.value;
                },
                onChanged: (val) {

                },
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

              Buttons.normalTextButton(
                  onTap: () {
                    controller.isLogin.value = true;
                  },
                  buttonText: 'already have an account?'
              ),

              const SizedBox(height: 16),
              Buttons.loginAndRegistrationButton(
                  buttonName: 'Sign up',
                  onTap: () {
                    controller.formKey['registration']?.currentState?.save();
                    if (controller.formKey['registration']?.currentState?.validate() ?? false) {
                      // Your action here
                    }
                  }
              ),
            ],
          ),
        ),
      ],
    );
  }
}
