import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/utils/text_edit_controller.dart';

import '../constant/app_color.dart';
import '../utils/app_string.dart';

///======================import items==============///
class UnsuccessfulPage extends StatefulWidget {
  const UnsuccessfulPage({Key? key}) : super(key: key);

  @override
  State<UnsuccessfulPage> createState() => _UnsuccessfulPageState();
}

///=========================class started=================///
class _UnsuccessfulPageState extends State<UnsuccessfulPage>
    implements UnsuccessfulViewPage {
  //================var ,list , bool , call here=============///
  var msg;

  ///=====================Ui build method start here====================///

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: const Text(
          AppStrings.unsuccessful,
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
        child: SizedBox(
          width: Get.width,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: unsuccessfulController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 6,
                  decoration: const InputDecoration(
                      hintText: AppStrings.enterReason,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: AppColor.listcolor1))),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Divider(
                  height: 10,
                  thickness: 15,
                  color: AppColor.listcolor1,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(AppStrings.online),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: AppColor.buttonPrimaryColor),
                          onPressed: () {},
                          child: const Text(
                            AppStrings.submit,
                            style: TextStyle(color: AppColor.white),
                          )),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
                const Divider(
                  height: 10,
                  thickness: 15,
                  color: AppColor.listcolor1,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(AppStrings.offline),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              backgroundColor: AppColor.buttonPrimaryColor),
                          onPressed: () {
                            gotoNextPage();
                          },
                          child: const Text(
                            AppStrings.save,
                            style: TextStyle(color: AppColor.white),
                          )),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                  ),
                ),
                const Divider(
                  height: 10,
                  thickness: 15,
                  color: AppColor.listcolor1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  gotoBackPage() {
    Get.offAllNamed(Routes.inspectionstatus);
  }

  @override
  gotoNextPage() {
    Get.toNamed(Routes.loginpage);
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
