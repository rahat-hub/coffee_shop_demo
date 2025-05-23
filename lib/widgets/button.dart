
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

abstract class Buttons {

  static loginAndRegistrationButton({required String buttonName, required void Function()? onTap}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            backgroundColor: Colors.black87
        ),
        child: Text(
          buttonName,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
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
  static normalTextButton({required String buttonText, required void Function()? onTap}) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white70),
        ),
      ),
    );
  }

}