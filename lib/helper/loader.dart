import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../constant_data/constant_assets.dart';

abstract class LoaderConstant{
  static loader(){
    return Get.dialog(BackdropFilter(filter: ImageFilter.blur(),blendMode: BlendMode.overlay,child: CupertinoActivityIndicator(radius: 20),),barrierDismissible: true,useSafeArea: true);
  }

  static loaderWithGif() async{

    EasyLoading.instance.loadingStyle =  Get.isDarkMode ? EasyLoadingStyle.custom : EasyLoadingStyle.light;
    EasyLoading.instance.dismissOnTap = false;
    EasyLoading.instance.userInteractions = false;

    await EasyLoading.show(
        maskType: EasyLoadingMaskType.black,
        // indicator: Image.asset(
        //   ConstantAssets.loaderGif,
        //   height: 80.0,
        //   width: 80.0,
        // ),
        indicator: Lottie.asset(ConstantAssets.loaderAnimationGif)
    );
  }
}