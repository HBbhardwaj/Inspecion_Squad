import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/app_routes/routes.dart';
import 'package:restaurants/presenter/Presenter.dart';
import 'package:restaurants/utils/app_images.dart';
import 'package:restaurants/utils/app_string.dart';
import '../contracts/ContractLogin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements View {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          AppStrings.loginappbartext,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Container(
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(AppImages.loginlogo),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                Text(
                  msg == null ? '' : '$msg',
                  style: TextStyle(color: Colors.red),
                ),
                TextFormField(
                  controller: cntrlEmail,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      const InputDecoration(hintText: AppStrings.hintemailtext),
                  style: const TextStyle(fontSize: 16.0, color: Colors.black87),
                  validator: (value) {},
                  onSaved: (value) {
                    presenter.setEmail(value!);
                  },
                ),
                const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                TextFormField(
                  controller: cntrlPassword,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: AppStrings.hintpasswordtext,
                      fillColor: Colors.blue),
                  style: const TextStyle(fontSize: 16.0, color: Colors.black87),
                  validator: (value) {},
                  onSaved: (value) {
                    presenter.setPassword(value!);
                  },
                ),
                const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0)),
                ElevatedButton(
                  child: const Text(AppStrings.login),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState?.save();
                      presenter.doLogin();
                    }
                  },
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
    Get.offAllNamed(Routes.homeScreen);
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
