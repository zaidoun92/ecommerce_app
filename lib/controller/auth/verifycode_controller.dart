import 'package:ecommerce_app/core/constant/routes_name.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  //
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  //
  late String verifycode;
  //
  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }
}
