import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/utils/app_string.dart';

import '../app_routes/routes.dart';
import '../models/commonlist_model.dart';
import '../utils/app_images.dart';

class ConductInspection extends StatefulWidget {
  const ConductInspection({Key? key}) : super(key: key);

  @override
  State<ConductInspection> createState() => _ConductInspectionState();
}

class _ConductInspectionState extends State<ConductInspection>
    implements ConductInspectionPageView {
  List<CommonListModel> itemlist = [];
  var msg;
  late Presenter presenter;
  void initState() {
    itemlist = [
      CommonListModel(
        AppIcons.settingIcon,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
      CommonListModel(
        AppIcons.erroIcon,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
      CommonListModel(
        AppIcons.settingIcon,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
      CommonListModel(
        AppIcons.erroIcon,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
      CommonListModel(
        AppIcons.settingIcon,
        AppStrings.title,
        AppStrings.title1,
        AppStrings.titlt2,
        AppStrings.title3,
        AppStrings.title4,
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text(
          AppStrings.conductInspection,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => gotoBackpage(),
          color: Colors.black,
        ),
      ),
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
                  color: Colors.blueGrey.shade50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Container(
                    width: Get.width,
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () => gotoprotocalPage(),
                          child: Image.asset(
                            itemlist[index].iconData,
                            width: 70,
                            height: 70,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 14),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(itemlist[index].title1),
                            Text(itemlist[index].title2),
                            Text(itemlist[index].title3),
                            SizedBox(
                              width: 120,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.deepPurple.shade50),
                                child: const Text(
                                  AppStrings.unsuccessful,
                                  style: TextStyle(color: Colors.black54),
                                ),
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
  gotoprotocalPage() {
    Get.toNamed(Routes.protocalPage);
  }

  @override
  gotoNextpage() {
    // TODO: implement gotoNextpage
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

  @override
  gotoBackpage() {
    Get.offAllNamed(Routes.createInspectionPage);
  }
}
