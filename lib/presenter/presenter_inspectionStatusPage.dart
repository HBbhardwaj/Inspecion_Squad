import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterInspectionStatus extends InspectionStatusPresenter {
  InspectionStatusView? inspectionStatusView;
  PresenterInspectionStatus(InspectionStatusView view) {
    view.setPresenter(this);
    inspectionStatusView = view;
  }
  @override
  gotoNextPage() {
    inspectionStatusView!.gotoNextPage();
  }

  @override
  gotobackPage() {
    inspectionStatusView!.gotoBackPage();
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
