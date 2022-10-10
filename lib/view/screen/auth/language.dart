import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';

import '../../widget/language/custombuttonlang.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButtonLang(textbutton: "Ar", onPressed: () {}),
            CustomButtonLang(textbutton: "En", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
