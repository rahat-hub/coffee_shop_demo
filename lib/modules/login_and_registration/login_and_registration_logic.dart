
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

import '../../helper/loader.dart';

class LoginAndRegistrationLogic extends GetxController {

  RxBool isLoading = false.obs;


  //final GlobalKey formKey = GlobalKey<FormBuilderState>();

  final GlobalKey<FormState> formKeyUserName = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyUserPassword = GlobalKey<FormState>();
  RxMap<String, TextEditingController> loginAndRegistrationController = <String, TextEditingController>{}.obs;

  RxBool obscurePassword = true.obs;

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

  void togglePasswordVisibility() {
    obscurePassword.value = !obscurePassword.value;
  }
}
