import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/utils/app_string.dart';

import '../app_routes/routes.dart';

class ConductInspection extends StatefulWidget {
  const ConductInspection({Key? key}) : super(key: key);

  @override
  State<ConductInspection> createState() => _ConductInspectionState();
}

class _ConductInspectionState extends State<ConductInspection>
    implements ConductInspectionPageView {
  var msg;
  late Presenter presenter;
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
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 16, top: 10),
            child: Text(AppStrings.conductInpectionline1),
          ),
          Divider(
            height: 6,
            thickness: 2,
          )
        ],
      )),
    );
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
