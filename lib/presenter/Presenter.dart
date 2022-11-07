import 'package:restaurants/contracts/ContractLogin.dart';
import 'package:restaurants/models/user.dart';
import 'package:restaurants/utils/app_string.dart';

class PresenterLogin implements Presenter {
  View? mView;
  User? user;

  PresenterLogin(View v) {
    v.setPresenter(this);
    mView = v;
    user = User();
  }

  @override
  doLogin() {
    if (user!.isLoginValid()) {
      //user credentials are valid
      //for this tuts we simulate login
      onSuccess('payload from server', 'success');
    } else {
      mView!.showError(AppStrings.loginPageError);
    }
  }

  @override
  onError(String msg) {
    mView!.showError(msg);
  }

  @override
  onSuccess(payload, String msg) {
    mView!.showSuccess(msg);
    mView!.gotoHomePage();
  }

  @override
  setEmail(String email) {
    user!.email = email;
  }

  @override
  setPassword(String pwd) {
    //set user password;
    user!.password = pwd;
  }

  @override
  Future subscribe() {
    // TODO: implement subscribe
    throw UnimplementedError();
  }

  @override
  Future unsubscribe() {
    // TODO: implement unsubscribe
    throw UnimplementedError();
  }
}
