
import 'package:get/get.dart';

class ValidationCheckHelper{

  static validateHelperEmail({required String value}) {

    if (value.isEmpty) {
      return 'Please enter an email';
    } else if (!GetUtils.isEmail(value)) {
      return 'Please enter a valid email';
    } else {
      return '';
    }
  }

}