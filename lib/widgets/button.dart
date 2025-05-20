
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

abstract class Buttons {
  static socialButton({required String assetPath, required void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Lottie.asset(assetPath, height: 40, width: 40, fit: BoxFit.contain),
      ),
    );
  }
}