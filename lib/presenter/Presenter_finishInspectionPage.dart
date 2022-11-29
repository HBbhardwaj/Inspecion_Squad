import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterFinishInspection extends FinishInspectionPagePresenter {
  FinishInspectionPageView? finishInspectionPageView;
  PresenterFinishInspection(FinishInspectionPageView view) {
    view.setPresenter(this);
    finishInspectionPageView = view;
  }

  @override
  gotoNextPage() {
    finishInspectionPageView!.gotoBackPage();
  }

  @override
  gotobackPage() {
    finishInspectionPageView!.gotoNextPage();
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
