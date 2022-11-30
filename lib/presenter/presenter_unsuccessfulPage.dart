import 'package:restaurants/contracts/ContractLogin.dart';

class PresenterUnsuccessfulpage extends UnsuccessfulPresenter {
  UnsuccessfulViewPage? unsuccessfulViewPage;
  PresenterUnsuccessfulpage(UnsuccessfulViewPage view) {
    view.setPresenter(this);
    unsuccessfulViewPage = view;
  }

  @override
  gotoBackPage() {
    unsuccessfulViewPage!.gotoBackPage();
  }

  @override
  gotoNextPage() {
    unsuccessfulViewPage!.gotoBackPage();
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
