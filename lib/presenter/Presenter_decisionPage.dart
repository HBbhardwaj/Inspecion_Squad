import '../contracts/ContractLogin.dart';

class PresenterDecision extends DecisionPagePresenter {
  DecisionPageView? decisionPageView;
  PresenterDecision(DecisionPageView view) {
    decisionPageView = view;
  }
  @override
  gotoBackPage() {
    decisionPageView!.gotoBackPage();
  }

  @override
  gotoClickNo() {
    decisionPageView!.gotoclickNo();
  }

  @override
  gotoNextPage() {
    decisionPageView!.gotoNextPgae();
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
