///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/models/decisionpagemodel.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/app_string.dart';

import '../app_routes/routes.dart';

class DecisionPage extends StatefulWidget {
  const DecisionPage({Key? key}) : super(key: key);

  @override
  State<DecisionPage> createState() => _DecisionPageState();
}

///=========================class started=================///
class _DecisionPageState extends State<DecisionPage>
    implements DecisionPageView {
//================var ,list , bool , call here=============///
  var msg;
  late Presenter presenter;
  List<DecisionPageModel> decisonlist = [];
  int initialIndex = 0;

  @override
  void initState() {
    ///====================decisionlist item is here===========///
    decisonlist = [
      DecisionPageModel(AppStrings.doors, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.light, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.market, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.outlet, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.wall, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.ceiling, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.window, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.counter, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.electricalS, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.floor, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.hotwater, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.call, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.sink, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.cabinet, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
      DecisionPageModel(AppStrings.bathroomitem, AppStrings.nod, AppStrings.od,
          AppStrings.nA, AppIcons.addIcon, AppIcons.commentIocn),
    ];
    super.initState();
  }

  ///=====================Ui build method start here====================///
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // Added
      length: 2, // Added
      initialIndex: initialIndex,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          title: const Text(
            AppStrings.protocaltitle,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => gotoBackPage(),
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(AppStrings.doesbathroom),
                    ),
                    TabBar(
                        labelColor: Colors.red,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.red,
                        onTap: (int index) {
                          setState(() {
                            initialIndex = index;
                          });
                        },
                        tabs: const [
                          Tab(
                            text: AppStrings.tab1,
                          ),
                          Tab(
                            text: AppStrings.tab2,
                          )
                        ])
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  AppStrings.bathroomlocation,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              _getPaymentMethod(initialIndex),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getPaymentMethod(int index) {
    Widget widget = _yesWidget();
    switch (index) {
      case 0:
        widget = _yesWidget();
        break;
      case 1:
        widget = _noWidget();
        break;
    }
    return widget;
  }

  _yesWidget() => ListView.builder(
      itemBuilder: (context, int index) {
        return Column(
          children: [
            Card(
              child: Container(
                color: (index % 2 == 0)
                    ? Colors.deepPurple.shade50
                    : Colors.grey.shade200,
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(decisonlist[index].item),
                        Text(decisonlist[index].item2),
                        InkWell(
                            onTap: () {
                              if (decisonlist[index]
                                  .item
                                  .contains(AppStrings.electricalS)) {
                                gotoNextPgae();
                              }
                            },
                            child: Text(decisonlist[index].item3)),
                        Text(decisonlist[index].item4),
                        Image.asset(
                          decisonlist[index].iconData,
                          height: 20,
                          width: 20,
                        ),
                        Image.asset(
                          decisonlist[index].iconData1,
                          height: 20,
                          width: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                      ),
                      child: Divider(
                        color: (index % 2 == 0) ? Colors.grey : Colors.white,
                        height: 3,
                        thickness: 1,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      },
      itemCount: decisonlist.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics());

  _noWidget() => const Center(
          child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Text(
          AppStrings.nodata,
          style: TextStyle(color: Colors.red, fontSize: 18),
        ),
      ));
  @override
  gotoBackPage() {
    Get.offAllNamed(Routes.protocalPage);
  }

  @override
  gotoNextPgae() {
    Get.toNamed(Routes.adddecision);
  }

  @override
  gotoclickNo() {
    // TODO: implement gotoclickNo
    throw UnimplementedError();
  }

  @override
  refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }

  @override
  setPresenter(t) {
    // TODO: implement setPresenter
    throw UnimplementedError();
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
}
