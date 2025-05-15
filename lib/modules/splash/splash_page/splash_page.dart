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
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome to CoffeeTime",
          body: "Your daily dose of freshly brewed coffee, delivered hot.",
          image: Center(child: Icon(Icons.emoji_food_beverage, size: 120, color: Colors.brown)),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Choose Your Brew",
          body: "Browse a wide selection of coffee styles and flavors.",
          image: Center(child: Icon(Icons.coffee, size: 120, color: Colors.brown)),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Fast & Fresh Delivery",
          body: "Get your coffee on time, every time.",
          image: Center(child: Icon(Icons.delivery_dining, size: 120, color: Colors.brown)),
          decoration: getPageDecoration(),
        ),
      ],
      onDone: () {
        Get.offNamed(Routes.dashBoard);
      },
      showSkipButton: true,
      skip: Text("Skip"),
      next: Icon(Icons.arrow_forward),
      done: Text("Start", style: TextStyle(fontWeight: FontWeight.bold)),
      dotsDecorator: getDotDecoration(),
    );
  }

  PageDecoration getPageDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 18),
    imagePadding: EdgeInsets.all(24),
    //pageColor: Colors.brown.shade50,
  );

  DotsDecorator getDotDecoration() => DotsDecorator(
    activeColor: Colors.brown,
    size: Size(10, 10),
    activeSize: Size(22, 10),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  );



}
