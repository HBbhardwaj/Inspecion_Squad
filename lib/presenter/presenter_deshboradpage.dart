import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterDeshBoradPage extends DeshBoradPresenter {
  DeshBoradView? deshBoradView;
  int demiSelectedIndex = 0;
  PresenterDeshBoradPage(DeshBoradView view) {
    view.setPresenter(this);
    deshBoradView = view;
  }

  @override
  gotoNextPage() {
    throw UnimplementedError();
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

  @override
  gotoBackPage() {
    // TODO: implement gotoBackPage
    throw UnimplementedError();
  }
}
