import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
  //
  goToVerfiyCode();
}

class CheckEmailControllerImp extends CheckEmailController {
  //
  late TextEditingController email;
  //
  @override
  checkEmail() {}

  @override
  goToVerfiyCode() {
    Get.offNamed(AppRoute.verfiyCodeSignUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
