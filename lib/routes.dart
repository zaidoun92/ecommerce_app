import 'package:ecommerce_app/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

import 'core/constant/routes_name.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
};
