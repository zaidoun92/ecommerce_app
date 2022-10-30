import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/view/widget/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
        elevation: 0.0,
        title: Text(
          'Success',
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: AppColor.grey,
              ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            const Text("...."),
            const Text("...."),
            const Spacer(),
            Container(
              width: double.infinity,
              child: CustomButtonAuth(
                text: "Go To Login",
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
