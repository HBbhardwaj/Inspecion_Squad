import 'package:flutter/material.dart';
import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/models/commonlist_model.dart';

class CommonListPage extends StatefulWidget {
  const CommonListPage({Key? key}) : super(key: key);

  @override
  State<CommonListPage> createState() => _CommonListPageState();
}

class _CommonListPageState extends State<CommonListPage>
    implements CommonListPageView {
  List<CommonListModel> itemlist = [];

  @override
  void initState() {
    itemlist = [
      CommonListModel(
        '',
        '',
        '',
        '',
        '',
        '',
      ),
      CommonListModel(
        '',
        '',
        '',
        '',
        '',
        '',
      ),
      CommonListModel(
        '',
        '',
        '',
        '',
        '',
        '',
      ),
      CommonListModel(
        '',
        '',
        '',
        '',
        '',
        '',
      ),
      CommonListModel(
        '',
        '',
        '',
        '',
        '',
        '',
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemBuilder: (context, int index) {
            return Column(
              
            );
          },
          itemCount: itemlist.length,
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics()),
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
}
