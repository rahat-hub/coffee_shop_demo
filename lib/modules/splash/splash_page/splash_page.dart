import 'package:coffee_shop_demo/modules/splash/splash_logic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../routes/app_routes.dart';

class SplashPage extends GetView<SplashLogic> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashLogic>();
    return Obx(() {
      return controller.isLoading.isFalse ? IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Welcome to CoffeeTime",
            body: "Your daily dose of freshly brewed coffee, delivered hot.",
            image: Center(child: Icon(
                Icons.emoji_food_beverage, size: 120, color: Colors.white)),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "Choose Your Brew",
            body: "Browse a wide selection of coffee styles and flavors.",
            image: Center(
                child: Icon(Icons.coffee, size: 120, color: Colors.white)),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: "Fast & Fresh Delivery",
            body: "Get your coffee on time, every time.",
            image: Center(child: Icon(
                Icons.delivery_dining, size: 120, color: Colors.white)),
            decoration: getPageDecoration(),
          ),
        ],
        onDone: () => Get.offNamed(Routes.loginAndRegistration),
        onSkip: () => Get.offNamed(Routes.loginAndRegistration),
        showSkipButton: true,
        skip: Text("Skip", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),),
        next: Icon(Icons.arrow_forward, size: 25),
        done: Text("Start", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
        dotsDecorator: getDotDecoration(),
        globalBackgroundColor: Colors.brown[600],
      ) : SizedBox();
    });
  }

  PageDecoration getPageDecoration() =>
      PageDecoration(
        titleTextStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18),
        imagePadding: EdgeInsets.all(24),
        //pageColor: Colors.brown.shade50,
      );

  DotsDecorator getDotDecoration() =>
      DotsDecorator(
        activeColor: Colors.brown[200],
        size: Size(15, 15),
        activeSize: Size(25, 10),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24)),
      );


}
