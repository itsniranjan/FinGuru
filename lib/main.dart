import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_abc/SignUp.dart';
import 'package:project_abc/ResetPwd.dart';
import 'package:project_abc/dashboard.dart';
import 'package:project_abc/home.dart';
import 'package:get/get.dart';

import 'home.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => Home(), transition: Transition.fadeIn),
      GetPage(
          name: '/', page: () => Dashboard(), transition: Transition.fadeIn),
      GetPage(
          name: '/signup', page: () => SignUp(), transition: Transition.fadeIn),
      GetPage(
          name: '/resetpwd',
          page: () => ResetPwd(),
          transition: Transition.fadeIn),
    ],
  ));
}
