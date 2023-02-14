///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/models/adddecision_model.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/app_string.dart';

import '../constant/app_color.dart';

class AddDecisionPage extends StatefulWidget {
  const AddDecisionPage({Key? key}) : super(key: key);

  @override
  State<AddDecisionPage> createState() => _AddDecisionPageState();
}

///=========================class started=================///
class _AddDecisionPageState extends State<AddDecisionPage>
    implements AddDecisionPageView {
//================var ,list , bool , call here=============///
  var msg;
  bool isvisible = false;
  late Presenter presenter;
  List<AddDecisionPageModel> addDecisionlist = [];

  @override
  void initState() {
    ///=========================addDecisionList  item is here===============///
    addDecisionlist = [
      AddDecisionPageModel(AppStrings.breakers, false),
      AddDecisionPageModel(AppStrings.burent, false),
      AddDecisionPageModel(AppStrings.covers, false),
      AddDecisionPageModel(AppStrings.electricalPanel, false),
      AddDecisionPageModel(AppStrings.gif, false),
      AddDecisionPageModel(AppStrings.leaks, false),
      AddDecisionPageModel(AppStrings.wiring, false),
      AddDecisionPageModel(AppStrings.panelboard, false),
    ];

    super.initState();
  }

  ///==========================UI part start here==========///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text(
          AppStrings.protocaltitle,
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8),
                child: Text(AppStrings.electicalSystemI),
              ),
              const SizedBox(
                height: 5,
              ),
              const Divider(
                height: 5,
                thickness: 6,
              ),
              ListView.builder(
                itemBuilder: (context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: (index % 2 == 0)
                            ? AppColor.listcolor1
                            : AppColor.listcolor2,
                        child: ListTile(
                          leading: Checkbox(
                            value: addDecisionlist[index].checkbox,
                            onChanged: (bool? value) {
                              if (index == 2) {
                                setState(() {
                                  addDecisionlist[index].checkbox = value!;
                                  isvisible = !isvisible;
                                });
                              }
                            },
                          ),
                          title: InkWell(
                              onTap: () {
                                if (index == 2) {
                                  gotoNextPage();
                                }
                              },
                              child: Text(addDecisionlist[index].item1)),
                          trailing: addDecisionlist[index].checkbox
                              ? Wrap(
                                  spacing: 12,
                                  children: <Widget>[
                                    Visibility(
                                      visible: isvisible,
                                      child: Image.asset(
                                        AppIcons.editicon,
                                        height: 15,
                                        width: 15,
                                      ),
                                    ),
                                    Visibility(
                                      visible: isvisible,
                                      child: Image.asset(
                                        AppIcons.cancel,
                                        height: 15,
                                        width: 15,
                                      ),
                                    )
                                  ],
                                )
                              : const SizedBox.shrink(),
                        ),
                      )
                    ],
                  );
                },
                shrinkWrap: true,
                itemCount: addDecisionlist.length,
                physics: const NeverScrollableScrollPhysics(),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  gotoBackPage() {
    Get.offAllNamed(Routes.decisionPage);
  }

  @override
  gotoNextPage() {
    Get.toNamed(Routes.confrimdecision);
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
