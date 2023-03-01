///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/constant/app_color.dart';
import 'package:restaurants/presenter/Presenter.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/app_string.dart';
import 'package:restaurants/utils/text_edit_controller.dart';
import 'package:restaurants/view/view_controller/home/home_controller.dart';
import '../contracts/ContractLogin.dart';

class LoginPage extends StatefulWidget {
  final _homeController = Get.put(HomeController());
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

///=========================class started=================///
class _LoginPageState extends State<LoginPage> implements View {
  //================var ,list , bool , call here=============///

  final formKey = GlobalKey<FormState>();
  var msg;
  late Presenter presenter;

  @override
  void initState() {
    super.initState();

    PresenterLogin(this);
  }

  ///=====================Ui build method start here====================///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                Image.asset(AppImages.loginlogo),
                const SizedBox(
                  height: 30,
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: AppStrings.hintemailtext,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0))),
                    style:
                        const TextStyle(fontSize: 16.0, color: Colors.black87),
                    validator: (value) {
                      return null;
                    },
                    onSaved: (value) {
                      presenter.setEmail(value!);
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 6.0)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        hintText: AppStrings.hintpasswordtext,
                        fillColor: Colors.blue),
                    style:
                        const TextStyle(fontSize: 16.0, color: Colors.black87),
                    validator: (value) {},
                    onSaved: (value) {
                      presenter.setPassword(value!);
                    },
                  ),
                ),
                // Text(
                //   msg == null ? '' : '$msg',
                //   style: const TextStyle(color: Colors.red),
                // ),
                const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.buttonPrimaryColor,
                      minimumSize: const Size.fromHeight(40), // NEW
                    ),
                    child: const Text(AppStrings.login),
                    onPressed: () {
                      // gotoHomePage();
                      if (formKey.currentState!.validate()) {
                        formKey.currentState?.save();

                        widget._homeController.callLoginApi(presenter);
                      }
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  gotoHomePage() {
    Get.offAllNamed(Routes.selectpage);
  }

  @override
  refresh() {
    setState(() {});
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
