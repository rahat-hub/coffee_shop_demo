import 'package:get/get.dart';

import 'login_and_registration_logic.dart';

class LoginAndRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginAndRegistrationLogic());
  }
}
