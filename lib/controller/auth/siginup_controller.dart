import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  //
  goToLogIn();
}

class SignUpControllerImp extends SignUpController {
  //
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  //
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  //
  @override
  signUp() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      Get.offNamed(AppRoute.verfiyCodeSignUp);
      // Get.delete<SignUpControllerImp>();
    } else {
      print("Not Vaild");
    }
  }

  @override
  goToLogIn() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
