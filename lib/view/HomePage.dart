import 'package:flutter/material.dart';

import '../contracts/ContractLogin.dart';
import '../presenter/presenter_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements HomeView {
  late PresenterHome presenter;
  var msg;

  @override
  void initState() {
    super.initState();
    //subscribe to presenter here
    PresenterHome(this); //passing this view to login presenter;
    // presenter.subscribe();R
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Center(child: Text('We are here')),
      ),
    );
  }

  @override
  goToNextPage() {
    // TODO: implement goToNextPage
    throw UnimplementedError();
  }

  @override
  refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }

  @override
  setPresenter(t) {
    presenter = t;
  }

  @override
  showError(msg) {
    this.msg = msg;
    refresh();
  }

  @override
  showSuccess(msg) {
    this.msg = msg;
    refresh();
  }
}
