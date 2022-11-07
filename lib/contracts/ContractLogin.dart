import 'package:restaurants/contracts/BasePresenter.dart';
import 'package:restaurants/contracts/BaseView.dart';

abstract class View extends BaseView {
  showError(var msg); //called when the is an error to display
  showSuccess(var msg); //message displayed when login is successful
  gotoHomePage();
}

abstract class HomeView extends BaseView {
  showError(var msg); //called when the is an error to display
  showSuccess(var msg); //message displayed when login is successful
  goToNextPage();
}

abstract class Presenter extends BasePresenter {
  setEmail(String email); //to set user email for login
  setPassword(String pwd);
  doLogin();
}

abstract class HomePres extends BasePresenter {
  nextPage();
}
