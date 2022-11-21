///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/models/home_model.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/app_string.dart';
import 'package:restaurants/view/createInspectionPage.dart';

import '../contracts/ContractLogin.dart';
import '../models/dashboard_model.dart';
import '../presenter/presenter_homepage.dart';
import 'dashboard_page.dart';
import 'loginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

///=========================class started=================///
class _HomePageState extends State<HomePage> implements HomePageView {
  //================var ,list , bool , call here=============///
  late PresenterHomePage presenterHomePage;
  List<HomeModel> homeList = [];

  @override
  void initState() {
    PresenterHomePage(this);

    ///=======================homelist  craete here================///
    homeList = [
      HomeModel(
          leftIcon: AppIcons.leafIcon,
          rightIcon: AppIcons.nextIocn,
          title: AppStrings.checkDecisionTree),
      HomeModel(
          leftIcon: AppIcons.editicon,
          rightIcon: AppIcons.nextIocn,
          title: AppStrings.createInspection),
      HomeModel(
          leftIcon: AppIcons.listIcon,
          rightIcon: AppIcons.nextIocn,
          title: AppStrings.bodegas),
    ];
    super.initState();
  }

  ///=====================Ui build method start here====================///
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemBuilder: (context, int index) {
        return InkWell(
            onTap: () {
              presenterHomePage.demiIndex = index;
              presenterHomePage.goToInspectionPage();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          homeList[index].leftIcon,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          homeList[index].title,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Image.asset(
                      homeList[index].rightIcon,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3,
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                )
              ],
            ));
      },
      itemCount: homeList.length,
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(),
    );
  }

  @override
  goToInspectionPage() {
    switch (presenterHomePage.demiIndex) {
      case 0:
        Get.toNamed(Routes.loginpage);
        break;
      case 1:
        Get.toNamed(Routes.createInspectionPage);
        break;
      case 2:
        Get.toNamed(Routes.selectpage);
        break;
    }
  }

  @override
  refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }

  @override
  selectedIndex(int index) {}

  @override
  setPresenter(t) {
    this.presenterHomePage = t;
  }

  @override
  showError(msg) {
    // TODO: implement showError
    throw UnimplementedError();
  }

  @override
  showSuccess(msg) {
    // TODO: implement showSuccess
    throw UnimplementedError();
  }

  @override
  gotoBackPage() {
    Get.off(Routes.selectpage);
    throw UnimplementedError();
  }
}
