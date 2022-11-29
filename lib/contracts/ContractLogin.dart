import 'package:restaurants/contracts/BasePresenter.dart';
import 'package:restaurants/contracts/BaseView.dart';

////==============================>Login page View && Login page presenter=======================///

abstract class View extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoHomePage();
}

abstract class Presenter extends BasePresenter {
  setEmail(String email);
  setPassword(String pwd);
  doLogin();
}

///=============================Slected page View && Slected Page presenter====================///

abstract class SelectPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  goToHomePage();
}

abstract class SelectPagePresenter extends BasePresenter {
  nextPage();
}

///===================================== Home Page View && Home page presenter===================///
abstract class HomePageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);

  goToInspectionPage();
  gotoBackPage();
}

abstract class HomePagePresenter extends BasePresenter {
  goToInspectionPage();
  gotoBackPage();
}

///=============================DeshBorad view && DeshBorad presenter===================///

abstract class DeshBoradView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoNextPage();
  gotobackPage();
}

abstract class DeshBoradPresenter extends BasePresenter {
  gotoNextPage();
  gotoBackPage();
}

///========================CreateInspectionPage && CreateInspectionPage Presenter==========///

abstract class CreateInsectionPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  createnewInsection();
  gotoBackpage();
}

abstract class CreateInsectionPagePresenter extends BasePresenter {
  createnewInsection();
  gotoBackpage();
}

///=========================CommonListPageView && CommonListPagePresenter====///

abstract class CommonListPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoNextpage();
}

abstract class CommonListPagePresenter extends BasePresenter {
  gotoNextPage();
}

///=========================ConductInspectionPageView && ConductInspectionPagePresenter====///

abstract class ConductInspectionPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoNextpage();
  gotoBackpage();
}

abstract class ConductInspectionPagePresenter extends BasePresenter {
  gotoNextPage();
  gotoBackPage();
  gotoprotocalPage();
}

///===========================ProtocalPageView && ProtocalPagePresenter=====///

abstract class ProtocalPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoNextPgae();
  gotoBackPage();
}

abstract class ProtocalPagePresenter extends BasePresenter {
  gotoNextPage();
  gotoBackPage();
}

///============================DecisionpageView && DecisionPagePresenter=====///

abstract class DecisionPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoNextPgae();
  gotoBackPage();
  gotoclickNo();
}

abstract class DecisionPagePresenter extends BasePresenter {
  gotoNextPage();
  gotoBackPage();
  gotoClickNo();
}

///=========================AddDecisionpageView && AddDecisionPagePresenter ===================///

abstract class AddDecisionPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoNextPage();
  gotoBackPage();
  gotoclickNo();
}

abstract class AddDecisionPagePresenter extends BasePresenter {
  gotoNextPage();
  gotoBackPage();
  gotoClickNo();
}

///=====================ConfrimDecisionPageView && ConfrimDecisionPagePresenter===========///

abstract class ConfrimDecisionPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoNextPage();
  gotoBackPage();
}

abstract class ConfrimDecisionPagePresenter extends BasePresenter {
  gotoNextPage();
  gotoBackPage();
}

///=======================FinishInspectionPageView && FinishInspectionPagePresenter=============///

abstract class FinishInspectionPageView extends BaseView {
  showError(var msg);
  showSuccess(var msg);
  gotoNextPage();
  gotoBackPage();
}

abstract class FinishInspectionPagePresenter extends BasePresenter {
  gotoNextPage();
  gotobackPage();
}
