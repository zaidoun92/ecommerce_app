import 'dart:ui';

import 'package:ecommerce_app/core/constant/color.dart';
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
          children: [
            const SizedBox(height: 20),
            Text(
              "Welcome Back",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Sign In With Your Email And Password Or Continue With Social Media",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            const SizedBox(height: 25),
            TextFormField(
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                label: const Text("Email"),
                suffixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
