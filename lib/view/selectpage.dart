///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/constant/app_color.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/app_string.dart';
import 'package:restaurants/view/dashboard_page.dart';
import '../contracts/ContractLogin.dart';
import '../presenter/presenter_selectpage.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);

  @override
  State<SelectPage> createState() => _SelectPageState();
}

///=========================class started=================///
class _SelectPageState extends State<SelectPage> implements SelectPageView {
  //================var ,list , bool , call here=============///
  late PresenterSelectPage presenter;
  var msg;

  @override
  void initState() {
    super.initState();

    PresenterSelectPage(this);
  }

  ///=====================Ui build method start here====================///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: InkWell(
                          onTap: () {
                            presenter.nextPage();
                          },
                          child: Card(
                            child: Image.asset(
                              AppImages.HomeScreenLogo,
                              width: Get.width / 2,
                              height: Get.width / 2,
                              fit: BoxFit.cover,
                              color: AppColor.buttonPrimaryColor,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Card(
                          child: Image.asset(
                            AppImages.secondHomeScreenlogo,
                            width: Get.width / 2,
                            height: Get.width / 2,
                            fit: BoxFit.fill,
                            color: AppColor.buttonPrimaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Flexible(
                      child: Text(
                        AppStrings.nycKitchens,
                        style: TextStyle(
                            color: AppColor.buttonPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        AppStrings.bodegas,
                        style: TextStyle(
                            color: AppColor.buttonPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  goToNextPage() {
    throw UnimplementedError();
  }

  @override
  refresh() {
    throw UnimplementedError();
  }

  @override
  setPresenter(t) {
    presenter = t;
  }

  @override
  showError(msg) {
    this.msg = msg;
    refresh();
  }

  @override
  showSuccess(msg) {
    this.msg = msg;
    refresh();
  }

  @override
  goToHomePage() {
    Get.to(DashboardPage());
  }
}
