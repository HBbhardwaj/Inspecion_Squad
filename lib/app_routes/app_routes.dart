import 'package:flutter/scheduler.dart';

import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/view/HomePage.dart';
import 'package:restaurants/view/LoginPage.dart';

appRoutes() => [
      ///---- screen page ---///
      GetPage(
        name: Routes.loginScreen,
        page: () => LoginPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),

      ///---- home page ---///
      GetPage(
        name: Routes.homeScreen,
        page: () => HomePage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
    ];
