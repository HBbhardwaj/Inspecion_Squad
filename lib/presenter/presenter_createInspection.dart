import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterCreateInspection extends CreateInsectionPagePresenter {
  CreateInsectionPageView? createInsectionPageView;
  PresenterCreateInspection(CreateInsectionPageView view) {
    view.setPresenter(this);
    createInsectionPageView = view;
  }
  @override
  createnewInsection() {
    createInsectionPageView!.createnewInsection();
  }

  @override
  onError(String msg) {
    createInsectionPageView?.showError(msg);
  }

  @override
  onSuccess(payload, String msg) {
    createInsectionPageView?.showSuccess(msg);
  }

  @override
  Future subscribe() {
    throw UnimplementedError();
  }

  @override
  Future unsubscribe() {
    throw UnimplementedError();
  }

  @override
  gotoBackpage() {
    // TODO: implement gotoBackpage
    throw UnimplementedError();
  }
}
