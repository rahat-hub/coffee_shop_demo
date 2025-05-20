import 'package:coffee_shop_demo/helper/loader.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class SplashLogic extends GetxController {

  RxBool isLoading = false.obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    isLoading.value = true;
    await LoaderConstant.loaderWithGif();
    Future.delayed(Duration(seconds: 3));
    isLoading.value = false;
    await EasyLoading.dismiss();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
