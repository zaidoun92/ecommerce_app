import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSiginUp();
}

class LoginControllerImp extends LoginController {
  //
  late TextEditingController email;
  late TextEditingController password;
  //
  @override
  login() {}

  @override
  goToSiginUp() {
    Get.toNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
