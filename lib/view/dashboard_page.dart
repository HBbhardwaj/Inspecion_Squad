import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/models/dashboard_model.dart';
import 'package:restaurants/utils/app_string.dart';
import 'package:restaurants/view/selectpage.dart';

import '../contracts/ContractLogin.dart';
import '../presenter/presenter_deshboradpage.dart';
import 'HomePage.dart';
import 'conductInspection.dart';
import 'loginPage.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    implements DeshBoradView {
  List<DashboardModel> bottomList = [];
  List<Widget> screenList = [];
  late PresenterDeshBoradPage presenterDeshBoradPage;

  @override
  void initState() {
    bottomList = [
      DashboardModel(Icons.home, AppStrings.home),
      DashboardModel(Icons.calendar_today_outlined, AppStrings.schedule),
      DashboardModel(Icons.schedule, AppStrings.inspection),
      DashboardModel(Icons.info, AppStrings.json),
      DashboardModel(Icons.info, AppStrings.preview),
      DashboardModel(Icons.info, AppStrings.test),
    ];
    screenList = [
      const HomePage(),
      const ConductInspection(),
      const HomePage(),
      const LoginPage(),
      const HomePage(),
      const SelectPage()
    ];

    PresenterDeshBoradPage(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: const Center(
          child: Text(
            AppStrings.homeappbar,
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => gotobackPage(),
          color: Colors.black,
        ),
      ),
      body: screenList.elementAt(presenterDeshBoradPage.demiSelectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black.withOpacity(.90),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: presenterDeshBoradPage.demiSelectedIndex,
        items: getBottomTabs(bottomList),
        onTap: _onItemTapped,
      ),
    );
  }

  List<BottomNavigationBarItem> getBottomTabs(List<DashboardModel> tabs) {
    return tabs
        .map(
          (item) => BottomNavigationBarItem(
            icon: Icon(item.iconData),
            label: item.title,
          ),
        )
        .toList();
  }

  void _onItemTapped(int index) {
    setState(() {
      presenterDeshBoradPage.demiSelectedIndex = index;
    });
  }

  @override
  gotoNextPage() {}

  @override
  refresh() {
    // TODO: implement refresh
    throw UnimplementedError();
  }

  @override
  setPresenter(t) {
    presenterDeshBoradPage = t;
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
  gotobackPage() {
    Get.offNamed(Routes.selectpage);
  }
}
