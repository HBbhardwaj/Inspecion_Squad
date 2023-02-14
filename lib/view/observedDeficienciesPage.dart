///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/constant/app_color.dart';
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
        body: SingleChildScrollView(
          child: SizedBox(
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), //<-- SEE HERE
                ),
                elevation: 1,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: Get.width * 0.62,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.unitbathroom),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.electricalS),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child:
                                    Flexible(child: Text(AppStrings.acoveris)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: Get.width * 0.30,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(AppStrings.edit),
                              ),
                              SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        backgroundColor:
                                            AppColor.buttonPrimaryColor),
                                    onPressed: () {},
                                    child: const Text(
                                      AppStrings.resolve,
                                      style: TextStyle(color: AppColor.white),
                                    )),
                              ),
                              SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        backgroundColor:
                                            AppColor.buttonPrimaryColor),
                                    onPressed: () {},
                                    child: const Text(
                                      AppStrings.photos,
                                      style: TextStyle(color: AppColor.white),
                                    )),
                              ),
                              SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        backgroundColor:
                                            AppColor.buttonPrimaryColor),
                                    onPressed: () {},
                                    child: const Text(
                                      AppStrings.comment,
                                      style: TextStyle(color: AppColor.white),
                                    )),
                              ),
                              SizedBox(
                                width: 100,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        backgroundColor:
                                            AppColor.buttonPrimaryColor),
                                    onPressed: () {
                                      gotoNextPage();
                                    },
                                    child: const Text(
                                      AppStrings.delete,
                                      style: TextStyle(color: AppColor.white),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15),
                      child: Divider(
                        height: 1,
                        thickness: 1,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(2),
                      child: Divider(
                        height: 10,
                        thickness: 15,
                        color: AppColor.listcolor1,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  @override
  gotoBackPage() {
    Get.offAllNamed(Routes.finishInspection);
  }

  @override
  gotoNextPage() {
    Get.toNamed(Routes.inspectionstatus);
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
