import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  //
  goToVeryfiyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  //
  late TextEditingController email;
  //
  @override
  checkEmail() {}

  @override
  goToVeryfiyCode() {
    Get.offNamed(AppRoute.verfiyCode);
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
