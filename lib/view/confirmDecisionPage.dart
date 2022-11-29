///======================import items==============///
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/models/confrimdecision_model.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/text_edit_controller.dart';

import '../utils/app_string.dart';

class ConfrimDecisionPage extends StatefulWidget {
  const ConfrimDecisionPage({Key? key}) : super(key: key);

  @override
  State<ConfrimDecisionPage> createState() => _ConfrimDecisionState();
}

///=========================class started=================///
class _ConfrimDecisionState extends State<ConfrimDecisionPage>
    implements ConfrimDecisionPageView {
  //================var ,list , bool , call here=============///
  var msg;
  late Presenter presenter;
  List<ConfrimDecisionModel> confrimDecisionlist = [];
  ImagePicker picker = ImagePicker();
  XFile? image;

  @override
  void initState() {
    confrimDecisionlist = [
      ConfrimDecisionModel(AppStrings.noobserved, false),
      ConfrimDecisionModel(AppStrings.acoverismissing, false),
    ];
    super.initState();
  }

  ///======================UI part start here==============///
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 1,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(AppStrings.covermissing),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    height: 10,
                    thickness: 10,
                  ),
                  ListView.builder(
                    itemBuilder: (context, int index) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            color: (index % 2 == 0)
                                ? Colors.deepPurple.shade50
                                : Colors.grey.shade100,
                            child: ListTile(
                              leading: Checkbox(
                                  value: confrimDecisionlist[index].checkbox,
                                  onChanged: (bool? value) {
                                    if (index == 1) {
                                      setState(() {
                                        confrimDecisionlist[index].checkbox =
                                            value!;
                                      });
                                    }
                                  }),
                              title: Text(confrimDecisionlist[index].item),
                            ),
                          ),
                        ],
                      );
                    },
                    itemCount: confrimDecisionlist.length,
                    physics: const AlwaysScrollableScrollPhysics(),
                    shrinkWrap: true,
                  ),
                  const Divider(
                    height: 10,
                    thickness: 10,
                  ),
                  TextField(
                    controller: confrimdecisionpagecontroller,
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: AppStrings.entercommenthere,
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1, color: Colors.deepPurple.shade100))),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      AppStrings.photos,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      AppStrings.phototaken,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey.shade200),
                        onPressed: () async {
                          image = await picker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            Image.file(File(image!.path));
                          });
                        },
                        icon: Image.asset(
                          AppIcons.camera,
                          height: 20,
                          width: 20,
                        ),
                        label: const Text(
                          AppStrings.selectimage,
                          style: TextStyle(color: Colors.black45),
                        )),
                  ),
                  image == null
                      ? Container()
                      : SizedBox(
                          height: 150,
                          width: 140,
                          child: Card(
                              elevation: 4,
                              color: Colors.grey.shade200,
                              child: Image.file(File(image!.path)))),
                  const Divider(
                    height: 10,
                    thickness: 10,
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey.shade200),
                            onPressed: () {},
                            child: const Text(
                              AppStrings.cancel,
                              style: TextStyle(color: Colors.black45),
                            )),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey.shade200),
                            onPressed: () {
                              gotoNextPage();
                            },
                            child: const Text(
                              AppStrings.ok,
                              style: TextStyle(color: Colors.black45),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  gotoBackPage() {
    Get.offAllNamed(Routes.adddecision);
  }

  @override
  gotoNextPage() {
    Get.toNamed(Routes.finishInspection);
  }

  @override
  refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }

  @override
  setPresenter(msg) {
    // TODO: implement showError
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
