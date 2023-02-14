///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/utils/app_string.dart';

import '../app_routes/routes.dart';
import '../constant/app_color.dart';
import '../models/commonlist_model.dart';
import '../utils/app_images.dart';

class InspectionStatuspage extends StatefulWidget {
  const InspectionStatuspage({Key? key}) : super(key: key);

  @override
  State<InspectionStatuspage> createState() => _InspectionStatuspageState();
}

///=========================class started=================///

class _InspectionStatuspageState extends State<InspectionStatuspage>
    implements InspectionStatusView {
  //================var ,list , bool , call here=============///
  List<CommonListModel> itemlist = [];
  var msg;
  late Presenter presenter;
  void initState() {
    //=========================== item list is here ================///
    itemlist = [
      CommonListModel(
        AppIcons.cloudcheck,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
      CommonListModel(
        AppIcons.cloudsetting,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
      CommonListModel(
        AppIcons.cloudcheck,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
      CommonListModel(
        AppIcons.cloudsetting,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
      CommonListModel(
        AppIcons.cloudcheck,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
    ];
    super.initState();
  }

  ///=====================Ui build method start here====================///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text(
          AppStrings.inspectionstatus,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => gotoBackPage(),
          color: Colors.black,
        ),
      ),

      ///==================list start here==================///
      body: ListView.builder(
          itemBuilder: (context, int index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black,
                ),
                Text(itemlist[index].title),
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 0,
                ),
                Card(
                  color: (index % 2 == 0)
                      ? AppColor.listcolor1
                      : AppColor.listcolor2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: Get.width,
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            gotoNextPage();
                          },
                          child: Image.asset(
                            itemlist[index].iconData,
                            width: 70,
                            height: 70,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(width: 14),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(itemlist[index].title1),
                            Container(
                                width: 230,
                                color: Colors.blue.shade100,
                                child: Text(itemlist[index].title2)),
                            const Divider(
                              height: 1,
                            ),
                            Container(
                                width: 230,
                                color: Colors.yellow.shade100,
                                child: Text(itemlist[index].title3)),
                            const Divider(
                              height: 1,
                            ),
                            Container(
                              width: 230,
                              color: Colors.yellow.shade100,
                              child: Row(
                                children: const [
                                  Text(AppStrings.unsuccessful),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(AppStrings.fail),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          itemCount: itemlist.length,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics()),
    );
  }

  @override
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

  @override
  gotoBackPage() {
    Get.offAllNamed(Routes.observedDeficiencies);
  }

  @override
  gotoNextPage() {
    Get.toNamed(Routes.unsuccessfulPage);
  }
}
