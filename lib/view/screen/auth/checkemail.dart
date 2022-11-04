import 'package:ecommerce_app/controller/auth/checkemail_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/auth/custombuttonauth.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImp controller = Get.put(CheckEmailControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          '27'.tr,
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
            CustomTextTitleAuth(text: "28".tr),
            const SizedBox(height: 10),
            CustomTextBodyAuth(text: "29".tr),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              hintText: "12".tr,
              labelText: "18".tr,
              iconData: Icons.email_outlined,
              myController: controller.email,
            ),
            CustomButtonAuth(
              text: "30".tr,
              onPressed: () {
                controller.goToSuccessSignUp();
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
