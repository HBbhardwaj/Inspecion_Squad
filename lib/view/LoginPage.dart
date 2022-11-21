///======================import items==============///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/presenter/Presenter.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/app_string.dart';
import '../contracts/ContractLogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

///=========================class started=================///
class _LoginPageState extends State<LoginPage> implements View {
  //================var ,list , bool , call here=============///
  TextEditingController cntrlEmail = TextEditingController();
  TextEditingController cntrlPassword = TextEditingController();
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
                    controller: cntrlEmail,
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
                    controller: cntrlPassword,
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
                Text(
                  msg == null ? '' : '$msg',
                  style: const TextStyle(color: Colors.red),
                ),
                const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      minimumSize: const Size.fromHeight(40), // NEW
                    ),
                    child: const Text(AppStrings.login),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState?.save();
                        presenter.doLogin();
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
