import 'package:flutter/scheduler.dart';

import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/view/HomePage.dart';
import 'package:restaurants/view/addDecisionPage.dart';
import 'package:restaurants/view/createInspectionPage.dart';
import 'package:restaurants/view/dashboard_page.dart';
import 'package:restaurants/view/decisionPage.dart';
import 'package:restaurants/view/selectpage.dart';
import 'package:restaurants/view/loginPage.dart';

import '../view/conductInspection.dart';
import '../view/protocalPage.dart';

appRoutes() => [
      ///---- loginpage page ---///
      GetPage(
        name: Routes.loginpage,
        page: () => const LoginPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      ///---- Selectpage page ---///
      GetPage(
        name: Routes.selectpage,
        page: () => const SelectPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      /// -------dashboardpage-----///

      GetPage(
        name: Routes.dashboardPage,
        page: () => DashboardPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      /// -------homepage-----///

      GetPage(
        name: Routes.homepage,
        page: () => const HomePage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      ///---------------------createInspectionPage------------///
      GetPage(
        name: Routes.createInspectionPage,
        page: () => const CreateInspectionPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      ///=========================conduct Inspection==============///

      GetPage(
        name: Routes.conductInspection,
        page: () => const ConductInspection(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      ///=========================>Protocal Page ==============///

      GetPage(
        name: Routes.protocalPage,
        page: () => const ProtocalPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      ///========================>Decision Page ==================///

      GetPage(
        name: Routes.decisionPage,
        page: () => const DecisionPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),

      ///========================>AddDecision Page ==================///

      GetPage(
        name: Routes.adddecision,
        page: () => const AddDecisionPage(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];
