///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/common_widget/textfeild.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/utils/text_edit_controller.dart';

import '../app_routes/routes.dart';
import '../utils/app_string.dart';

class CreateInspectionPage extends StatefulWidget {
  const CreateInspectionPage({Key? key}) : super(key: key);

  @override
  State<CreateInspectionPage> createState() => _CreateInspectionPageState();
}

///=========================class started=================///
class _CreateInspectionPageState extends State<CreateInspectionPage>
    implements CreateInsectionPageView {
  //================var ,list , bool , call here=============///
  var msg;
  late Presenter presenter;

  ///=====================Ui build method start here====================///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text(
          AppStrings.createInspection,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => gotoBackpage(),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ///================textFeild1===========///
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.pHAName),
              ),

              CommonTextField(
                controller: phaNameController,
                hintText: AppStrings.pHAName,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),

              //=================textFeild2================//
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.pHACode),
              ),
              CommonTextField(
                controller: phaCodeController,
                hintText: AppStrings.pHACode,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //=======================textFeild3===============//
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.propertyid),
              ),
              CommonTextField(
                controller: properityIdController,
                hintText: AppStrings.propertyid,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //=====================textFeild4================//
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.inspectorid),
              ),
              CommonTextField(
                controller: inspectoridController,
                hintText: AppStrings.inspectorid,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //========================textFeild5==========//
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.ownerid),
              ),
              CommonTextField(
                controller: owneridController,
                hintText: AppStrings.ownerid,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //====================textFeild6=============//
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.ownername),
              ),
              CommonTextField(
                controller: ownernameController,
                hintText: AppStrings.ownername,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //============================textFeild7=============//

              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.inspectiondate),
              ),
              CommonTextField(
                controller: inspectiondateController,
                hintText: AppStrings.inspectiondate,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //==========================textFeild8================//

              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.inspectiontime),
              ),
              CommonTextField(
                controller: inspectiontimeController,
                hintText: AppStrings.inspectiontime,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //==========================textFeild9================//

              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.unitid),
              ),
              CommonTextField(
                controller: unitidController,
                hintText: AppStrings.unitid,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //===========================textFeild10======//

              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.unitAddress1),
              ),
              CommonTextField(
                controller: unitaddressline1Controller,
                hintText: AppStrings.unitAddress1,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //=====================textFeild11=============//
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.unitaddress2),
              ),
              CommonTextField(
                controller: unitaddressline2Controller,
                hintText: AppStrings.unitaddress2,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //=========================textFeild12===========//
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.city),
              ),
              CommonTextField(
                controller: cityController,
                hintText: AppStrings.city,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),

              //===================texteild13==============//
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.state),
              ),
              CommonTextField(
                controller: stateController,
                hintText: AppStrings.state,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //====================textFeild14==============//

              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.zipcode),
              ),
              CommonTextField(
                controller: zipcodeController,
                hintText: AppStrings.zipcode,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 5,
              ),
              //=================textfeild15============//

              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text(AppStrings.zipplus),
              ),
              CommonTextField(
                controller: zipplusController,
                hintText: AppStrings.zipplus,
                borderRadius: 6,
                pLeft: 6,
                pRight: 6,
                textInputType: TextInputType.text,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20,
              ),
              //======================Button================//
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: Colors.grey.shade200),
                  onPressed: () {
                    createnewInsection();
                  },
                  child: const Text(
                    AppStrings.create,
                    style: TextStyle(color: Colors.black45),
                  ))
            ],
          )),
    );
  }

  void clearController() {
    phaCodeController.clear();
    phaNameController.clear();
    properityIdController.clear();
    inspectoridController.clear();
    owneridController.clear();
    ownernameController.clear();
    inspectiondateController.clear();
    inspectiontimeController.clear();
    unitidController.clear();
    unitaddressline1Controller.clear();
    unitaddressline2Controller.clear();
    cityController.clear();
    stateController.clear();
    zipcodeController.clear();
    zipplusController.clear();
  }

  @override
  createnewInsection() {
    clearController();
    Get.toNamed(Routes.conductInspection);
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
  showSuccess(msg) {
    // TODO: implement showSuccess
    throw UnimplementedError();
  }

  @override
  showError(msg) {
    // TODO: implement showError
    throw UnimplementedError();
  }

  @override
  gotoBackpage() {
    Get.offAllNamed(Routes.dashboardPage);
  }
}
