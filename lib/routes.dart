import 'package:ecommerce_app/core/middleware/mymiddleware.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:ecommerce_app/view/screen/auth/success_signup.dart';
import 'package:ecommerce_app/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:ecommerce_app/view/screen/auth/verifycodesignup.dart';
import 'package:ecommerce_app/view/screen/language.dart';
import 'package:ecommerce_app/view/screen/onboarding.dart';
import 'package:get/get.dart';

import 'core/constant/routes_name.dart';

List<GetPage<dynamic>>? routes = [
  // Auth
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  // OnBoarding
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
];

// Map<String, Widget Function(BuildContext)> routess = {
//   // Auth
//   AppRoute.login: (context) => const Login(),
//   AppRoute.signUp: (context) => const SignUp(),
//   AppRoute.forgetPassword: (context) => const ForgetPassword(),
//   AppRoute.resetPassword: (context) => const ResetPassword(),
//   AppRoute.verfiyCode: (context) => const VerfiyCode(),
//   AppRoute.successSignUp: (context) => const SuccessSignUp(),
//   AppRoute.successResetpassword: (context) => const SuccessResetPassword(),
//   AppRoute.verfiyCodeSignUp: (context) => const VerfiyCodeSignUp(),
//   // OnBoarding
//   AppRoute.onBoarding: (context) => const OnBoarding(),
// };
