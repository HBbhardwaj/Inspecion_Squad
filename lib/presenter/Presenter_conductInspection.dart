import '../contracts/ContractLogin.dart';

class PresenterConductInspection extends ConductInspectionPagePresenter {
  ConductInspectionPageView? conductInspectionPageView;
  PresenterConductInspection(ConductInspectionPageView view) {
    view.setPresenter(this);
    conductInspectionPageView = view;
  }

  @override
  gotoNextPage() {
    conductInspectionPageView!.gotoNextpage();
    throw UnimplementedError();
  }

  @override
  onError(String msg) {
    conductInspectionPageView?.showError(msg);
  }

  @override
  onSuccess(payload, String msg) {
    conductInspectionPageView?.showSuccess(msg);
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

  @override
  gotoBackPage() {
    conductInspectionPageView!.gotoBackpage();
  }

  @override
  gotoprotocalPage() {
    // TODO: implement gotoprotocalPage
    throw UnimplementedError();
  }
}
