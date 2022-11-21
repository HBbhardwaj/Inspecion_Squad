import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/models/protocalpagemodel.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/app_string.dart';

class ProtocalPage extends StatefulWidget {
  const ProtocalPage({Key? key}) : super(key: key);

  @override
  State<ProtocalPage> createState() => _ProtocalPageState();
}

class _ProtocalPageState extends State<ProtocalPage>
    implements ProtocalPageView {
  List<ProtocalPageModel> itemlist = [];
  List<UnititemModel> UnitList = [];
  var msg;
  bool isvisible = false;
  late Presenter presenter;

  @override
  void initState() {
    UnitList = [
      UnititemModel(AppStrings.kitchen, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(
          AppStrings.dinnerArea, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(AppStrings.porch, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(AppStrings.laundry, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(
          AppStrings.bathroom, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(AppStrings.stroage, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(
          AppStrings.basement, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(AppStrings.garage, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(AppStrings.bedroom, AppIcons.addIcon, AppIcons.commentIocn),
      UnititemModel(AppStrings.living, AppIcons.addIcon, AppIcons.commentIocn),
    ];

    itemlist = [
      ProtocalPageModel(AppStrings.unit, AppIcons.dropdownIcon, UnitList),
      ProtocalPageModel(AppStrings.commonArea, AppIcons.dropdownIcon, []),
      ProtocalPageModel(AppStrings.buildingex, AppIcons.dropdownIcon, []),
      ProtocalPageModel(AppStrings.site, AppIcons.dropdownIcon, []),
      ProtocalPageModel(AppStrings.buildingsystem, AppIcons.dropdownIcon, []),
      ProtocalPageModel(AppStrings.hAndS, AppIcons.dropdownIcon, []),
      ProtocalPageModel(AppStrings.variance, AppIcons.dropdownIcon, []),
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
      body: ListView.builder(
        itemBuilder: (context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Card(
                  child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(itemlist[index].item1),
                    trailing: InkWell(
                      onTap: () {
                        if (index == 0) {
                          setState(() {
                            isvisible = !isvisible;
                          });
                        }
                      },
                      child: Image.asset(
                        itemlist[index].iconData,
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  itemlist[index].list.isNotEmpty
                      ? ListView.builder(
                          itemCount: UnitList.length,
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Visibility(
                                  visible: isvisible,
                                  child: Card(
                                    color: Colors.deepPurple.shade50,
                                    child: ListTile(
                                      title: Text(UnitList[index].item1),
                                      trailing: FittedBox(
                                        fit: BoxFit.fill,
                                        child: Row(
                                          children: <Widget>[
                                            Image.asset(
                                              AppIcons.addIcon,
                                              width: 18,
                                              height: 18,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Image.asset(
                                              AppIcons.commentIocn,
                                              width: 18,
                                              height: 18,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            );
                          })
                      : const SizedBox()
                ],
              ))
            ],
          );
        },
        itemCount: itemlist.length,
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
      ),
    );
  }

  @override
  gotoBackPage() {
    Get.toNamed(Routes.conductInspection);
  }

  @override
  gotoNextPgae() {
    // TODO: implement gotoNextPgae
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
