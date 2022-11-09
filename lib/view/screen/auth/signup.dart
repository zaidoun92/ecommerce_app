import 'package:ecommerce_app/controller/auth/siginup_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:ecommerce_app/view/widget/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/custombuttonauth.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          '17'.tr,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: AppColor.grey,
              ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            CustomTextTitleAuth(text: "10".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "24".tr),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              valid: (val) {},
              hintText: "23".tr,
              labelText: "20".tr,
              iconData: Icons.person_outline,
              myController: controller.username,
            ),
            CustomTextFormAuth(
              valid: (val) {},
              hintText: "12".tr,
              labelText: "18".tr,
              iconData: Icons.email_outlined,
              myController: controller.email,
            ),
            CustomTextFormAuth(
              valid: (val) {},
              hintText: "22".tr,
              labelText: "21".tr,
              iconData: Icons.phone_android_outlined,
              myController: controller.phone,
            ),
            CustomTextFormAuth(
              valid: (val) {},
              hintText: "13".tr,
              labelText: "19".tr,
              iconData: Icons.lock_outline,
              myController: controller.password,
            ),
            CustomButtonAuth(
              text: "17".tr,
              onPressed: () {
                controller.signUp();
              },
            ),
            const SizedBox(height: 30),
            CustomTextSignUpOrSignIn(
              textone: "25".tr,
              texttwo: "26".tr,
              onTap: () {
                controller.goToLogIn();
              },
            ),
          ],
        ),
      ),
    );
  }
}
