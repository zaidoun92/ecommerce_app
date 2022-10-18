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
          'Sign In',
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
            const CustomTextTitleAuth(text: "Welcome Back"),
            const SizedBox(height: 10),
            const CustomTextBodyAuth(
                text:
                    "Sign Up With Your Email And Password Or Continue With Social Media"),
            const SizedBox(height: 15),
            CustomTextFormAuth(
              hintText: "Enter Your Username",
              labelText: "Username",
              iconData: Icons.person_outline,
              myController: controller.username,
            ),
            CustomTextFormAuth(
              hintText: "Enter Your Email",
              labelText: "Email",
              iconData: Icons.email_outlined,
              myController: controller.email,
            ),
            CustomTextFormAuth(
              hintText: "Enter Your Phone",
              labelText: "Phone",
              iconData: Icons.phone_android_outlined,
              myController: controller.phone,
            ),
            CustomTextFormAuth(
              hintText: "Enter Your Password",
              labelText: "Password",
              iconData: Icons.lock_outline,
              myController: controller.password,
            ),
            const Text(
              "Forget Password",
              textAlign: TextAlign.end,
            ),
            CustomButtonAuth(
              text: "Sign Up",
              onPressed: () {},
            ),
            const SizedBox(height: 30),
            CustomTextSignUpOrSignIn(
              textone: "have an account ? ",
              texttwo: " SignIn",
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
