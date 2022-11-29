///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/utils/app_string.dart';

class ObservedDeficiencies extends StatefulWidget {
  const ObservedDeficiencies({Key? key}) : super(key: key);

  @override
  State<ObservedDeficiencies> createState() => _ObservedDeficienciesState();
}

///=========================class started=================///
class _ObservedDeficienciesState extends State<ObservedDeficiencies>
    implements ObservedDeficienciesView {
  //=====================var, list, bool,call here================///
  var msg;
  late Presenter presenter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text(
          AppStrings.observeddrficiencies,
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
      body: Text("Hello"),
    );
  }

  @override
  gotoBackPage() {
    Get.offAllNamed(Routes.confrimdecision);
  }

  @override
  gotoNextPage() {
    // TODO: implement gotoNextPage
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
