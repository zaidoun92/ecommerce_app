import 'dart:ui';

import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/customtextbodyauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtextformauth.dart';
import 'package:ecommerce_app/view/widget/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
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
          children: const [
            SizedBox(height: 20),
            CustomTextTitleAuth(text: "Welcome Back"),
            SizedBox(height: 10),
            CustomTextBodyAuth(
                text:
                    "Sign In With Your Email And Password Or Continue With Social Media"),
            SizedBox(height: 65),
            CustomTextFormAuth(
              hintText: "Enter Your Email",
              labelText: "Email",
              iconData: Icons.email_outlined,
            ),
            SizedBox(height: 65),
            CustomTextFormAuth(
              hintText: "Enter Your Password",
              labelText: "Password",
              iconData: Icons.lock_outline,
            ),
          ],
        ),
      ),
    );
  }
}
