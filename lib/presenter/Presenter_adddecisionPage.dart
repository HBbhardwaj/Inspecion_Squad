import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterAddDecision extends AddDecisionPagePresenter {
  AddDecisionPageView? addDecisionPageView;
  PresenterAddDecision(AddDecisionPageView view) {
    view.setPresenter(this);
    addDecisionPageView = view;
  }
  @override
  gotoBackPage() {
    addDecisionPageView!.gotoBackPage();
  }

  @override
  gotoClickNo() {
    addDecisionPageView!.gotoclickNo();
  }

  @override
  gotoNextPage() {
    addDecisionPageView!.gotoNextPage();
  }

  @override
  onError(String msg) {
    // TODO: implement onError
    throw UnimplementedError();
  }

  @override
  onSuccess(payload, String msg) {
    // TODO: implement onSuccess
    throw UnimplementedError();
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
