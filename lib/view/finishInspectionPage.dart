///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/models/finishInspection_model.dart';
import 'package:restaurants/utils/app_string.dart';

import '../constant/app_color.dart';

class FinishInspectionPage extends StatefulWidget {
  const FinishInspectionPage({Key? key}) : super(key: key);

  @override
  State<FinishInspectionPage> createState() => _FinishInspectionPageState();
}

///=========================class started=================///
class _FinishInspectionPageState extends State<FinishInspectionPage>
    implements FinishInspectionPageView {
//================var ,list , bool , call here=============///
  var msg;
  late Presenter presenter;
  bool elavtedbuttoncolor = true;
  bool elavtedbuttoncolor1 = true;
  List<FinishInspectionModel> finishInspectionlist = [];

  @override
  void initState() {
    finishInspectionlist = [
      FinishInspectionModel(
          AppStrings.inspection, AppStrings.complate, AppStrings.unsuccessful),
      FinishInspectionModel(AppStrings.online, AppStrings.submit, ""),
      FinishInspectionModel(AppStrings.offline, AppStrings.save, ""),
    ];
    super.initState();
  }

  ///=========================addDecisionList  item is here===============///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text(
          AppStrings.finishInspection,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => gotoBackPage(),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 1,
              child: ListView.builder(
                itemBuilder: (context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  finishInspectionlist[index].item1,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () => setState(() =>
                                    elavtedbuttoncolor = !elavtedbuttoncolor),
                                child: InkWell(
                                  onTap: () {
                                    if (index == 2) {
                                      gotoNextPage();
                                    }
                                  },
                                  child: Text(
                                    finishInspectionlist[index].item2,
                                    style: TextStyle(color: AppColor.white),
                                  ),
                                ),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                  AppColor.buttonPrimaryColor,
                                )),
                              ),
                              finishInspectionlist[index].item3.isEmpty
                                  ? const SizedBox()
                                  : ElevatedButton(
                                      onPressed: () => setState(() =>
                                          elavtedbuttoncolor1 =
                                              !elavtedbuttoncolor1),
                                      child: Text(
                                        elavtedbuttoncolor1
                                            ? finishInspectionlist[index].item3
                                            : finishInspectionlist[index].item3,
                                        style: TextStyle(color: AppColor.white),
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                        elavtedbuttoncolor1
                                            ? AppColor.buttonPrimaryColor
                                            : AppColor.listcolor1,
                                      )),
                                    ),
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                      ),
                      const Divider(
                        color: AppColor.listcolor1,
                        height: 10,
                        thickness: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 5,
                        thickness: 1,
                      ),
                    ],
                  );
                },
                shrinkWrap: true,
                itemCount: finishInspectionlist.length,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  gotoBackPage() {
    Get.offAllNamed(Routes.confrimdecision);
  }

  @override
  gotoNextPage() {
    Get.toNamed(Routes.observedDeficiencies);
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
