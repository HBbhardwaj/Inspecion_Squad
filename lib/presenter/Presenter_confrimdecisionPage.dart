import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterConfrimDecision extends ConfrimDecisionPagePresenter {
  ConfrimDecisionPageView? confrimDecisionPageView;
  PresenterConfrimDecision(ConfrimDecisionPageView view) {
    view.setPresenter(this);
    confrimDecisionPageView = view;
  }
  @override
  gotoBackPage() {
    confrimDecisionPageView!.gotoBackPage();
  }

  @override
  gotoNextPage() {
    confrimDecisionPageView!.gotoNextPage();
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
