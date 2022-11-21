import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterProtocal extends ProtocalPagePresenter {
  ProtocalPageView? protocalPageView;
  PresenterProtocal(ProtocalPageView view) {
    view.setPresenter(this);
    protocalPageView = view;
  }

  @override
  gotoBackPage() {
    protocalPageView!.gotoBackPage();
  }

  @override
  gotoNextPage() {
    protocalPageView!.gotoNextPgae();
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
